# Capacity and cycles — what actually limits a game on the Internet Computer

Delulu Canyon runs entirely on-chain: the world, the players, the economy and the web client
are canisters, with no server anywhere. That raises a question with a genuinely surprising
answer — **how many people can play at once?**

This is what we measured, what we expected to be the limit and wasn't, and what turned out to
be the real one.

## The short answer

| stage | comfortable concurrent players | what binds |
|---|---|---|
| before the zone index | 50–100 | the per-zone read was O(the whole world) |
| after the zone index | **500–800** | one canister executes updates one at a time |
| beyond that | needs the world split across canisters | architecture, not tuning |

"Concurrent" means playing at the same moment, not accounts registered.

## Three things that look like the limit, and are not

Worth stating plainly, because each is where intuition sends you first — and each is wrong.

**The size of the world.** It is natural to assume bigger maps cost more to serve. They barely
register. Our zones are stored as one byte per tile; the whole world's terrain is a rounding
error beside everything else the canister holds — well under 1% of live state. Quadrupling the
size of every dungeon added about two megabytes. Terrain is fetched once when you enter a zone,
not on every frame, so a large map costs one fetch, not one per second.

**The world tick.** The game advances every four seconds: monsters move, wounds close, poison
bites, eggs hatch. That work is proportional to *players and monsters*, not to map area — the
occupancy pass walks creatures, never tiles. A thousand players is a few million instructions
inside a four-second budget. The tick stays comfortable into the thousands.

**Memory.** A player's state — position, health, inventory, equipment, bound torches — is a few
kilobytes. A thousand players is a few megabytes.

There is a real memory lesson, just not that one. A canister's memory high-water mark **never
falls**. It is set once, by the single largest burst of allocation the canister ever performs,
and then paid for — as memory and as running cost — for the life of that canister. In our case
the peak came from world-building operations that rebuilt a great deal of structure inside one
message. The fix is not to allocate less overall, but to never allocate a great deal *at once*:
world generation now runs one zone per call, deliberately, with no bulk variant available.

## What actually binds

### 1 · Reading a zone used to mean reading the world

Every poll — each player, every couple of seconds — walked every chest, monster, egg, body and
player in the entire world and kept the ones in your zone. Correct, and fine at eight players.

At a hundred it is roughly a hundred thousand entity visits per second. Queries on the IC are
not billed in cycles today, but they consume real processing capacity shared with everything
else, so the failure mode is not an error — it is the whole world quietly getting slower.

**The fix was an index from zone to the things in it**, so a zone read touches only that zone.
The interesting part was where to put it. Maintaining it at the call sites would have meant
patching every place that creates, moves or deletes anything — dozens of them, where a single
missed one makes a chest silently invisible to everyone standing next to it. So the index lives
*inside* the map type itself, maintained by the same operations that write the data. Nothing
that mutates the world can forget, because forgetting is not expressible.

It is also derived rather than stored: rebuilt from the real data whenever the canister starts.
It cannot drift out of sync across a release, and there is no extra shape to migrate.

### 2 · A canister does one thing at a time

Every action — a step, a swing, opening a chest, banking gold — is a message, and a canister
executes messages sequentially. A player in motion generates roughly one action every two or
three seconds. A few hundred actions a second is the practical ceiling for a canister doing
real work, which puts the wall around 500–800 people.

Past that the answer is not tuning, it is splitting the world across several canisters. That
brings its own difficulty: a player crossing between them must arrive exactly once, never twice
and never not at all, across a boundary where messages can be lost. Solvable, and solved on
paper, but not free.

### 3 · Cycles — the one nobody predicts

The Internet Computer is *reverse gas*: the canister pays for the messages it receives. The
player pays nothing. Every action anyone takes is billed to us.

At published rates, one player action costs roughly:

```
ingress message reception   1,200,000 cycles
argument bytes                400,000        (2,000 per byte — argument size matters)
execution base                590,000
instructions                1,200,000
                          -----------
                            3,390,000 cycles
```

Which sets the running cost by population:

| concurrent players | actions/sec | cycles/day | approx USD/day |
|---|---|---|---|
| 100 | 40 | 11.7 T | 16 |
| 500 | 200 | 58.6 T | 78 |
| 1,000 | 400 | 117.2 T | 156 |
| 2,500 | 1,000 | 292.9 T | 390 |

*(sustained concurrency, not peak — if a thousand are online at the busiest hour but three
hundred on average, the bill follows the average.)*

**This is the honest constraint: the code will comfortably hold more players than the funding
will.** Capacity work buys headroom; it does not buy cheapness.

Two consequences shape the design:

- **Reads should be queries, not updates.** Queries are not billed today. Anything a player does
  repeatedly — polling the world around them — belongs on the query path.
- **Argument size is a direct multiplier.** At 2,000 cycles per byte, a chatty protocol is a
  permanently more expensive one. It is the reason the world sends *changes* rather than
  re-sending everything in view.

## What the room actually looks like now

The geometry work that came out of this. Corridors used to be one tile wide — two players could
not pass — and rooms were joined in a chain, which leaves dead ends. Now corridors are three-tile
bands and rooms are joined in a loop with extra chords across it, so every room has at least two
ways out.

| map | walkable tiles | people at four tiles each |
|---|---|---|
| old dungeon floor | 352 | ~88 |
| standard hall | 2,552–3,018 | ~640–750 |
| deepest floor | 5,129–5,855 | **~1,280–1,460** |

About sixteen times the room to move, with every walkable tile still reachable from the entrance
— asserted in the test suite at both sizes, along with the corridors genuinely being three wide.

## How this was measured

Nothing here is a back-of-envelope estimate dressed up. The canister reports its own live state,
heap, allocation totals and peak live set; the payload of every call can be measured directly;
allocation per tick comes from sampling those counters over a known interval. Where a number is
an estimate — the per-action instruction count, the sustainable message rate — it is marked as
one.

The load test that follows from it ramps synthetic clients 10 → 50 → 100 → 250 → 500 against a
staging world, holding each step, and watches four things: peak memory (which must not step up,
because it never comes back down), whether the world tick keeps pace, round-trip latency, and
cycles burned per action against the model above. Each failure mode points somewhere different —
ticks falling behind means the tick needs splitting, latency climbing while ticks keep pace means
the sequential message wall, and memory stepping up means something allocates in proportion to
the world rather than to the request.

# Changelog

What changed, for people who play Delulu Canyon.

The world runs on-chain and holds real value, so this log says what is **different
to play** — not how the machine works underneath. Engineering detail stays in the
implementation repository and is deliberately not mirrored here, for the same
reason the [audit log](docs/audit-1.md) names open work by area only.

The client and the realm deploy independently and carry a version each; the
in-game menu shows both. Versions are `MAJOR.MINOR.PATCH`, and **1.0.0 is reserved
for opening the world to strangers** — until then the world is live but not
launched, which is what `0.x` means here.

---

## [0.30.4] — 2026-09-11

### The Ophan

The winged eyeball in the Chamber of Wheels has **a million hit points and twelve
tiles of reach.**

It was never a damage race, and the million does not make it one. **Only two
things in the game can touch the Ophan at all** — Gabriel's Sword, and Mr.
Sneed's relic — and either one of them ends it on its own. The difficulty is
getting hold of one, and then surviving the room.

What the million changes is which of the two you would sensibly choose. The relic
reaches thirty-five tiles and ends it from the doorway. The sword makes you walk
into a ring of fire that now carries **twelve tiles** — more than twice any other
boss's reach — and stand in it for something like two thousand swings. Same
outcome, opposite experience, and the walk has stopped being the reasonable one.

The reach is the Ophan's alone; nothing else in any world moved.

### The worlds run leaner

A world was walking every character ever created, several times a minute, to work
out who was in it — including everyone who had closed the tab weeks ago. Luméira
was doing that a thousand times over for nine people actually standing in it, and
it was most of what the world cost to run.

It counts who is *here* now. Nothing about play changes; the worlds simply stop
paying for people who went home, which is what buys the next world.

Two smaller versions of the same thing: a world nobody had visited for an hour
stayed wide awake for ever, and a world that came up empty could never fall
asleep at all.

---

## [0.30.3] — 2026-09-10

### Five dungeons under the desert

The Gate of the Two Truths, the Chamber of Wheels, the Senet Hall, the Quarry of
Red Granite and the Cisterns — five new places under the nine that were already
there. Three of them are built around an arena: **Cerberus** waits at the Gate of
the Two Truths, **the Ophan** in the Chamber of Wheels, and **the Grandmaster**
in the Senet Hall.

Each now stands where its room was drawn for it. Until this, a boss was scattered
to wherever there happened to be floor the first time anybody looked — and then
stayed there for good, in three rooms built around where it was meant to be.

### Dungeons outside the canyon open at their real depth

**Every dungeon in Waterworld, Space World and the desert had been opening
shallow** — however deep it was drawn, however far down you walked. Only Luméira's
three deep places were ever told how deep they were; everywhere else the world
assumed one floor down and stopped there.

Depth is not decoration. It decides what lives there, how hard the wizard hits,
and what is in the chests. So the isles' six dungeons and the Warrens and the Ink
Deep have been quietly easier and poorer than they were drawn to be, since the day
each of them opened. Every zone in all three worlds has been given its depth.

### The altar you were told to stand on

Two rooms in the desert are entirely about standing on a dais — and a dais drew as
bare floor, so there was nothing to stand on and no sign of where. There is an
altar on it now, found by the shape of the floor rather than by the room's name,
so it appears wherever one belongs.

### TORCH you were owed and could not claim

Players reported TORCH they had earned and could not collect. The pot was full and
the Keeper was working: what went wrong is that a claim asked for the whole of
what you were owed at once, and a claim above a certain size is refused — so two
grants that had failed for an ordinary reason were enough to lock every claim
after them, permanently.

**It pays what it can now and leaves the rest owed,** which is what it always
said it did. It took a day to find because the world was throwing away the
Keeper's reason and showing you its own; the Keeper's sentence reaches you now.

### The Crypt will not promise more than it can pay

Bonds are a claim on the Hoard, and the Hoard is fed by what the world loses.
Until now the only limit on selling bonds was measured against how much GOLD
exists — a number that knows nothing about the reserve standing behind them.

**Nothing had been spent; the claim had simply grown past the backing.** The Crypt
now prices new bonds against the reserve itself, and tightens exactly when
redemption is most attractive. If it cannot back what you are asking for, it says
so and sells you nothing.

---

## [0.30.2] — 2026-09-10

### The desert has three bosses

Cerberus, the Ophan and the Grandmaster — ten thousand hit points each at this
point, and each with something to take off it that exists nowhere else. Their
arenas opened a release later; see 0.30.3 for where they stand.

**One of them cannot be hurt by just anything.** What a blow counts as is decided
by a single table that both ways of striking consult, so a creature that answers
only to a particular thing answers to it however you come at it. The Ophan is the
desert's one — see 0.30.4.

### The cloak stopped hiding you from monsters

The Cloak of the Bright Epoch is protection from *people*. It had been hiding you
from everything with teeth as well, which made walking a dungeon in one a
different game from walking it without. Monsters and bosses see you now.

### Hairloss has a slot

Mr. Sneed's relic had no slot of any kind, which meant it was armed by being in
your pack — nothing to equip, nothing to take off. It is a trinket now, and you
choose whether you are carrying it or wearing it.

### A journey refuses at the door, not halfway

If the world you are travelling to cannot answer, the gate turns you back before
you step through, instead of letting you find out in the middle. And anyone a
silent world left locked mid-journey is settled and sent on.

### A chat problem no longer slows the world

Sending chat out to everyone had been part of the same heartbeat that moves the
monsters. A busy moment in one could be felt in the other. They are separate now.

---

## [0.30.1] — 2026-09-10

### Signs speak outside Luméira

A signpost in any world but the first stored its words and never said them. They
say them now, and two signs in a wide world no longer land on one another.

### The stable was never real

Boarding an animal has needed you to stand at a coop since it was written, and
there has never been a coop anywhere. There is one in the desert, and the tool
that lays tiles will now lay one in any world that wants it.

### Twelve gates

The desert is reachable on foot from all three worlds and they are reachable from
it. Luméira's new gate stands between the two fountains by the shore.

### Monsters you have hurt show it

In first person a creature you have wounded carries its health, and one that has
noticed you is marked. Nothing appears over a creature at full health, so the
screen stays quiet until something is not.

---

## [0.30.0] — 2026-09-10

**A fourth world has ground in it.** Desert World is nine zones, a temple built to
an old measure, a tomb under the great pyramid, and a fire that will take you at
any time of year.

### The desert

Dunes, three pyramids, a temple precinct and the wadi that used to be a river.
Oases with palms round them, a bitter lake you can fish from the shore of, salt
flats, and a necropolis where the masons work beside what they carved. Nine
places, and everything in them can be walked to.

The **Temple of the Question** is laid at one tile to one cubit, to the
measurements in 1 Kings 6: sixty cubits deep and twenty across, a main hall of
forty by twenty, a porch twenty broad and ten deep with two pillars at its mouth,
and at the far end a room twenty by twenty with two figures in it whose wings meet
in the middle. Nobody is meant to walk in there. You can.

### Inside is warm now

Winter used to stop at a dungeon door and nowhere else. It now stops at any door:
a temple, a hall, a court and an observatory keep the weather off you, and the
open world does not. That was the rule as written a release ago and only part of
it had arrived.

### The fire takes you year-round

Self Immolation no longer waits for winter. Stand at a bonfire whenever you like.
Everything it asks of you is unchanged, and so is everything it costs.

### Also

- Sixteen new faces, and the people wearing them can now be given any of them.
- A world can say what it is: a fourth look, sand and pale stone, with limestone
  lintels and lotus columns where another world has marble.
- Music knows a world by what it is rather than by its name, so a new place sounds
  like itself.

---

## [0.29.5] — 2026-09-10

Three reported in one night, and each was a true thing said in the wrong place.

### You could not bank a TORCH pouch anywhere but Luméira

A player earned two TORCH from a quest in Waterworld and could not put them
away — the vault answered with a sentence about who is allowed to operate a
canister, delivered to somebody standing at a vault holding two torches. They
could not bank them and would not leave the world carrying them.

The pouch worked in the first world and was refused in the other two. It works in
every world the Keeper serves.

### The fire blamed the approval for every refusal

Feeding a second torch failed by telling you the fire had not been approved to
spend them — after the first had gone in without any such thing. The message could
not be true and could not be acted on, because one cause was being named for every
possible failure. Both fires now tell you what actually happened.

### Chat refused you without telling you why

Saying anything could fail with an error code and no words. The limit on how fast
you can speak was being enforced in two places, and the one that could explain
itself was never reached. The door now turns away only what it is for, and
anything you can do something about is answered in a sentence.

---

## [0.29.4] — 2026-09-09

### Hairloss reaches thirty-five tiles

Mr. Sneed's relic reached five. It now reaches **thirty-five** — more than half the
width of a zone, and further than you can see.

This is a change of what the relic *is* rather than a nudge, and it was chosen
over a recommendation of twelve to fifteen. Everything that kept it inside the
rules still does: PvP has to be live where your target is standing, their own tile
is what decides, and a ghost casts nothing.

---

## [0.29.3] — 2026-09-09

### The fire told you it did not work yet

A player walked out to the new fire pit, found it, and was told *"full
functionality comming soon use at ur own risk"*.

That line was written when the bonfire shipped as a placeholder, and it stopped
being true the day Winter and Self Immolation went live. It had simply never
moved.

**A stale warning is worse than none** — it teaches you to skip the line, and this
is the one screen in the game with an irreversible button on it. The slot now
carries the warning actually worth reading: that giving yourself to the fire takes
everything the vault is not holding, and cannot be undone. The instructions say
what the fire does, too — it warms you, and in Winter it keeps the whole zone lit
for everyone standing in it.

---

## [0.29.2] — 2026-09-09

### There was no bonfire. In any world.

The fire that Winter is fed at, and that you can now walk into, had never
actually been laid — not in Luméira, not in Waterworld, not in Space World. It
had been built, tested and shipped, and then nothing ever put one in the ground.

Because the fire's panel only opens when you are standing beside it, that meant
**Winter's fires could not be fed and Self Immolation could not be reached**,
the day after both went live. Neither was broken; there was simply nowhere to
use them. It was found by counting what is actually in the world rather than
trusting that a finished feature was in it.

### And now it is four tiles across, out of town, and on your map

Rather than a campfire near the square, each world has a proper brazier: an iron
bowl on three legs, heaped and burning, four tiles to a side.

**Luméira's stands in a clearing in the pale wood, north of the Tendys farm** —
trees either side, well out of town. Waterworld's is among its trees, and Space
World and Player City have their own out past their squares.

It is the only orange on the minimap and carries a landmark dot, so you can
steer by it from across a world.

### Traders can pay you again

Selling to an NPC for coin could refuse with *"the Canyon's purse cannot cover
that today"* — including for players who had never traded with that NPC at all.

The refusal itself was right: the world will not promise coin it cannot pay. It
was working from a stale figure for its own purse, which had drifted to about
half of what was really there, so the amount it believed was free had fallen to
nearly nothing. It reads the true number now.

---

## [0.29.1] — 2026-09-09

**Everything below reaches the worlds for the first time.** The realms had stayed
on the previous build for a day while this was finished, so the season, the
repairs and the new things all arrive together.

### The counters take your money again

The ferry, a bed at the inn and Marrow's rod-mending refused every payment, from
everyone. Each one asked your purse to hand over the fare without ever asking
your permission first — so the fare could not be taken, and the refusal you saw
was a sentence about coins delivered to somebody standing next to a boat. They
work now, and a crossing back no longer asks a second time.

Two more counters had exactly the same fault and nobody had reported them:
putting a token into a pouch at the vault, and settling what you owe for a mend.
A check now runs before every release that looks for a counter which can take
money but never asks — it is what found those two.

Closes #35 and #37.

### Your rod can be mended anywhere

Marrow Quill mends rods, and Marrow stands in Luméira — so a worn rod in
Waterworld or Space World had no mender at all, and the shop counters said they
could not help. Every shop counter, storekeeper and bonewright now mends a rod.
Marrow is still cheaper, which is what the world has always told you.

### The castle door remembers you

The Castle Tower door took a key **and** a loaf every single time you walked
through it. Walking out is free, so anything that put you back outside cost you
another key and another loaf — and the loaf is a quest with a long wait behind
it. Two players bought a second key within a quarter of an hour of the first.

The door still keeps what it takes. It just does not ask the same person twice.

Closes #20. If this caught you, say so — we have been putting it right by hand.

### Winter

A season now closes over the canyon, and it is announced before it arrives.
While it holds, a zone that is not lit is a harder place to be: you move slower,
you do not mend, and you cannot see as far.

**Nothing is taken from you.** An unlit zone is a worse hour, never a lost sword,
and the Graveyard is reachable throughout.

Feeding a fire lights **the zone**, not the person — the torch you put in warms
everyone standing there, and a crowded town costs more to keep lit than an empty
one. Winter is weather, so it **stops at the door**: dungeons, guild halls and
interiors stay warm whatever is happening outside.

### Self Immolation

At a bonfire, in Winter, you can give the fire everything you are carrying.

Carried gold, every pouch, your pack and what you are wearing — only what is in
the vault survives it — and it buys hours of light for the zone, for everyone
standing in it. The fire asks twice before it takes anything, and tells you
exactly what it is about to take.

You then walk a while alight. Nothing can touch you and you can touch nothing:
no fighting, no picking things up, no doors. You burn where you chose to burn.
Anyone who stands beside you can listen to what the fire is saying through you,
and it says the same thing to everyone — so it is worth arguing about.

### Torches you earn now travel the way gold does

A torch from a quest now lands in your pouch: carried, at risk, on your body if
you die, and worth nothing until you walk it to a vault. Gold has always worked
that way and gold has been healthy; torches did not, and one reward was being
farmed by hundreds of accounts. The walk is the whole difference.

### The world costs less to run when it is quiet

The heartbeat that drives the world now costs what the world is actually doing.
A realm with nothing happening in it beats slower and spends less; a realm with
monsters awake beats at full speed. This is the change behind a realm running out
of funds on the 8th, and it is the reason it should not happen again.

---

## [0.29.0] — 2026-09-08 (client only)

**First person got a great deal better to look at.** The realms were unchanged.

### The sky says what the Keeper is doing

The overhead view has tinted its sky by the Keeper's mood for releases. First
person did not — it was one flat navy whatever the world was doing, so the two
views of one world disagreed about the loudest thing in it. They agree now, and
every sky stays a night sky.

### Walls have a grain, and the floor stopped lying

Near walls now show courses and joints, drawn from the stone's own colour, so a
wall reads as built rather than painted. And the ground under your feet changes
as you cross from grass to sand to stone — it used to be grass everywhere
outdoors, which is why every street looked like the same street.

### The fishing fight stopped covering the water

Hook a fish in first person and the fight now sits along the bottom of the
screen with the water still visible, instead of a window across the middle of
it. Same fight, same numbers, only the layout moves.

---

## [0.28.1] — 2026-09-08

**The realm and the Keeper moved. The client is unchanged from 0.28.0.**

### The Guild has stopped buying

The store counter no longer buys things back. You can still buy from it, repair
at it, and sell nothing to it — the Sell buttons are simply gone rather than
present and refusing.

This is not a punishment and it is meant to be temporary. Monsters come back
every forty seconds and do not check who is killing them, so anything a monster
drops can be turned into coin at a rate nothing else in the world can match.
Gold has always had a brake on it — you carry it, at risk, until you walk it to
a vault — and the counter had no equivalent. It reopens when there is one.

### One reward was being farmed, and it now asks you to have played

A quest reward that paid a torch could be reached by a character who had done
almost nothing. It is now behind the same kind of requirement the rest of the
world uses: a thing you must have done, and a standing you must have reached.

A second reward of the same shape was found and closed at the same time. It had
never been farmed, because the world it lives in had no players in it yet —
which is luck, not a defence.

Accounts that were farming at scale have been dealt with separately: a small
number banned, and a larger number placed under review while the ledger is read.
Anyone caught up in that wrongly should say so and it will be looked at.

### Banking never worked in two of the three worlds

The worst of the three, and nobody reported it. Banking gold, claiming a bounty
and receiving a torch reward all worked in Earth and quietly refused everywhere
else — since the day those worlds opened. If you play in Waterworld or Space
World and had a vault visit that seemed to do nothing, that was this.

All three worlds now do all three things.

### Earth's clock stopped for about an hour

Late in the day Earth stopped: nothing moved, monsters did not act, and some
actions hung rather than failing. The world's heartbeat had died, and the
automatic recovery that exists for exactly this had used up its attempts against
something it could not fix on its own.

It is running again, and the underlying cause — the world was close enough to
running out of fuel that it could no longer talk to the other canisters — has
been dealt with rather than papered over. Nothing was lost: the world freezes
where it is and resumes, it does not roll back.

---

## [0.28.0] — 2026-09-08 (client only)

**First person, behind `V`, and off unless you turn it on.** The realm knows
nothing about it — this is a way of drawing the world you are already in, not a
different world.

`V` turns it on and off. `Q` and `E` turn your head in steps rather than
sweeping, so you always know which way you are facing. `W` goes the way you are
looking. Your choice is remembered between visits.

The work after it turned on was making it **legible**, because the first version
was not:

- Buildings say what they are. The game already knew every name and was covering
  it up.
- A compass, and arrows at the edge of the screen for things behind you.
- Corners have an edge, floors and ceilings are shaded apart, and a room lit by
  the torch you are carrying no longer has a ceiling brighter than its floor.
- Things on the floor are drawn, and buildings have a seam between them.
- Seven kinds of wall that had all been drawn in the same colour are now seven
  colours.
- People standing beside you are drawn as people. They had been rectangles, and
  the view was too narrow to see them anyway.

It is a way of looking, not a way of playing: everything you can do in the
overhead view you do the same way here.

### Also in this release

- **Liquidity positions can be cashed out.** Two players uprooted a position and
  found it was not in their wallet, because there was no way in the client to
  turn a position back into tokens. There is now.

---

## [0.27.1] — 2026-09-08

**Live in all three worlds.** The client and the Keeper moved; the worlds
themselves are unchanged from 0.27.0.

### The Vault is open in Waterworld

It was built and deliberately shut. It is now open in **one world**, which was
always the plan: a thing you bank becomes a token titled to you, it stays yours
to use — you can wear a banked sword without taking it back out — and it does
not drop when you die. It opens elsewhere once a week of its accounting has been
watched and found exact.

And banked things can be **sold**. List one for gold from your wallet, and
anyone can buy it from theirs. The house takes 3% to the coffers. The seller
hands the token over first and the market checks it has really arrived before
the listing exists, because a listing without the thing behind it is a promise
the buyer is the one to discover is empty.

### Two worlds had stopped turning, and nobody had noticed

This is the one worth reading. Waterworld and Space World had been sitting at
**epoch zero since the day they opened**. The heartbeat that carries the
Obelisk's mood is the same heartbeat that turns a world's epoch, and it was only
ever reaching one world.

So in those two: no boss ever came back, no chest ever refilled, nothing ever
decayed, and the wildlife was never topped up. Three separate reports — the
Obelisk flashing over and over on mobile, "there aren't many monsters", and a
shop that took money and gave nothing back — turned out to be one cause and two
of its neighbours.

Both worlds are turning now. Their wildlife is switched on, and Space World —
which had **no hostile monsters anywhere in it** — has been stocked.

### Screens that could not be used

Every screen in the game was read, and then played. Twenty-six faults survived
being checked twice; twenty-three are fixed. Almost all of them were the same
shape: the world was right and the screen in front of you was wrong.

- **Escape opens the menu.** It had never once done so.
- The **action bar pages** instead of pushing its own buttons off the edge when
  you stand somewhere busy.
- **Barter lets you type an amount.** The box was being rebuilt under your
  fingers four times a second, so a decimal point could not survive being typed.
  And adding an item to an offer no longer sweeps your gold off the table.
- The **egg room and the bonfire can be paid.** Neither ever could be.
- The **smithy repairs the blade you are holding**, rather than only one spare
  in your bag.
- **"Return to Luméira" goes to Luméira**, instead of walking you to the middle
  of whichever world you were already in and announcing you had arrived.
- A **full creel says so**, instead of reporting a fish it did not keep as landed.

### And a version that had been lying

The build line in the menu exists to answer one question — which version am I
actually looking at — and it had been answering it wrongly for five releases.
Fixed, and the build now refuses to ship when the two version numbers and this
file disagree.

---

## [0.27.0] — 2026-09-07

**Live in all three worlds.** Shops that never worked, a counter that buys as
well as sells, and familiars the world remembers for you.

### Waterworld and Space World have working shops

This is the big one, and it is an admission. **Neither world's shops had ever
sold anything** — not once, since the day they opened. Every purchase, every
repair, every fare, and every trade with a townsperson that paid in gold was
refused by a piece of configuration that had never been set. Luméira was fine,
which is why it went unnoticed for so long: the counters were drawn, the
storekeepers stood behind them, the prices were right, and nothing could be
bought.

It is set now, in both worlds, and every gold path in them works.

### The Store buys back

Old Bessany and the smith will take things off you as well as sell them. Two
thirds of the asking price, and worn gear pays two thirds of what is left of it.
Five things before the next turn — enough to clear out a stack you have outgrown,
not enough to liquidate a hoard in one visit.

They buy back only what they sell, and only blades and tools. Food, reagents and
anything you found rather than bought, they will not take — the folk who barter
will. The gold goes to your pouch; bank it at a vault as usual.

### Your familiars are the world's business now

A bound bot used to live only in your browser. Clear your site data on the wrong
day and it was gone — a thing you had paid for, forgotten by the only place that
knew about it. The world keeps them now, so they survive a cleared cache and
follow you to another device.

### Smaller things you will notice

- **Night no longer shrinks when you zoom out.** The dark wash was drawn at the
  size of the screen and not the size of the view, so zooming out left a bright
  border around the world.
- **The rod is sold at both Willemsted counters**, not only one. A player who
  found the fishmonger first should not be told to go and find the other shop.
- **Refusals at a counter name the amount** you need to approve, instead of
  reporting a number nobody can act on.

---

## [0.26.0] — 2026-09-06

**Live in all three worlds.** Five hundred kinds of fish, a town on the water
that buys them, a fire in every world, and a long list of things that existed
and could not be reached.

### Deep-sea fishing

Five hundred kinds of fish. Cast off any deep water, or from Willemsted's quay,
and something takes the line — then decide how to play it. **Haul** does damage
and risks losing it. **Give line** does none, is far less likely to lose it, and
*tires* the fish so every haul after is safer. Giving line frays the rod a
little, so a fresh rod buys you patience and a worn one does not.

Your book remembers every kind you have ever landed and names you for it at
twenty-five, seventy-five, a hundred and fifty and three hundred. It counts a
*kind*, so landing the same fish again moves nothing.

**Five of the five hundred exist once each in the whole world.** Whoever lands
one holds that row for ever.

Fish are things now: you carry them, and you can trade them like anything else.

### Willemsted, and the fishmonger

A pastel town on the water in Waterworld — five townhouses on one street, a quay
along the whole south edge, three speedboats knocking against their moorings.
Two counters. The middle house sells the rod and the compass; at the east end,
**Marta Quillon** buys what you landed.

She pays for the ordinary ones — never much, and never for one of the five,
which she will explain if you ask. She sells **hooks**, which make every haul
bite harder and go with the fish if it breaks the line, and **chum buckets**,
which show what is swimming within five tiles of your boat for a few minutes.
Row to a mark and cast on it and that is what you hook. Two prizes hang on her
wall for anyone who brings her enough different rare fish.

### The Sneed Lounge, and the rooms around it

Couches you can sit on — every couch in the game had been scenery. A portal each
way between the lounge and the steakhouse. Staff with opinions. **Mr. Sneed** is
looking for his jersey and will trade something remarkable for a steak.

### Fires

A bonfire in each of the three worlds. Winter is coming and the fires are lit
early; they say plainly that they are unfinished.

### The ICDV guild, and the Taco hall

The ICDV guild room can be entered by the people it was built for, and its door
now says what it actually wants instead of the same sentence every other door
says. The Taco hall is a meeting room again — tables, chairs, and an altar that
reads the DAO's own token straight from its ledger.

### Player City, and the square

The district is half again as large, and there is a walled square standing in
the new ground: grass, a fountain in the middle, a fence around it, and two
gates. A sign at each gate reads *leave an item, take an item*.

Anything set down inside the square stays where it was left. Things dropped in
the open world decay in time; these do not. It is somewhere to leave a thing you
have finished with for whoever comes after you.

Dominic's Stakehouse stands behind the district, and its three back rooms — the
egg room, the bath, and the room where travellers leave gifts — can be walked
into again. Their doors had been refusing to move because the place they opened
onto was outside the old walls. The larger district put ground under it.

### Willemsted's two counters

They were stocked with the wrong things. The rod shop offered groceries, and
Marta's shelf came out empty however much you had landed. Both now sell what
they were built to sell.

Reported from play, which is why there is now a check that fails the build when
a shop is stocked with something the world has no way to show.

### Things that existed and could not be reached

A fortnight-old release shipped five exotic pets nobody could buy. A guild room
sat behind a door whose key could not be obtained. A coop was drawn, legended,
standable — and did nothing. Money a failed payment left you owing was recorded
against you with no way to see it or clear it. Tokens could leave a pouch and
never enter one.

All of those work now, and **a check was added that fails the build when a
player-facing feature has no way in.** Four separate reviews found that same
shape independently; it is not a list of oversights, it is an absent check.

### Smaller things you will notice

- **Refusals say what to do**, instead of naming the machine underneath.
- **Travel between worlds** no longer flashes a blank page — from either door.
- **Your party** is in the menu, not only behind one glyph in the chat header.
- **Where You Stand**, a new screen: relics found, gifts given and taken, and
  anything owed in either direction.
- A backgrounded tab **stops polling every second**, and several parts of the
  world stopped doing far more work per turn than they needed to.

---

## [0.25.0] — 2026-09-04

**Live.** A second district with a mansion in it, five animals that are not
chickens, a room where strangers leave things for each other, twenty-two more
crates hidden across the land, and a graveyard in every realm.

Staked torches now open doors. That is the theme of this one.

### Player City

A district of your own, reached by a gate on the harbour road five paces east of
the Chamber's door. A street runs up the middle with a terrace of shopfronts
down one side — **the eight Chamber shopfronts have moved here**, tenants,
leases and stock intact. The Chamber stays the office where you sign for one;
the City is where it actually stands.

Two guild halls opened at the same time. **The Taco Hall**, low and hung with
paper banners, where somebody is always eating. And **the Gold Guild**, gold
overhead and gold underfoot and louder than it needs to be — with an inner
lounge behind a door that costs ten GOLD to pass, which is quieter and much
better furnished.

### Dominic's Stake House and Grille Palace

The big one. A mansion on the east side of the City with a pitched roof, lit
windows and a porch, and inside a hall you can get lost in: a long bar, couches
round two rugs, a gallery of tables down the east wall, and an office end where
people in suits are visibly working.

**The bar serves you.** Marisa pours, Odalys has something on today, and the two
waitresses carry plates. A round each per day, on the house.

**The counter at the back sells bots.** Trading ones, staking ones — whatever
Sneed has published. You sign for it yourself with your own wallet: the realm
never touches your money and never holds what you buy. What comes back walks
beside you as a familiar.

**The egg room** sells five animals that are not chickens: a falcon, a white
Siberian tiger, a flamingo, a giant snail and a wolf. Five GOLD an egg, and
**five hundred staked torches to be allowed to buy one** — the highest bar in
the game, and the reason they are allowed to do anything at all:

| | |
|---|---|
| Falcon | sees one tile further |
| White Siberian tiger | hits harder |
| Flamingo | carries one more thing |
| Giant snail | takes less damage |
| Wolf | finishes off what is already nearly dead |

Hold a **Tendys neuron** and you may have one free — but only one, and claiming
another lets the first go.

**Gifts Left by Other Travellers** is a room of shelves upstairs. Leave
something and a stranger finds it. **Nothing in there rots**, which is the whole
point. Leave nothing and you may take one thing, ever; leave things and you may
take as many as you have left. It is not generosity, it is bookkeeping.

Down the back there is a fenced yard with **graves beside the pool**, and the
pool keeps its own fence — the two women in it are still not taking visitors.

### Graveyards, in every realm

Luméira has had Hallowmere from the beginning. **Waterworld's had no gravekeeper
and no way in at all**, and **Space World had no graveyard whatsoever**. Both do
now, each with a Sexton who will explain, at some length, what a staked torch is
actually for.

Any world minted from here on comes with one. That is enforced rather than
remembered.

### Torches open doors now

- **The Chamber of Commerce: 300 staked torches.** It is where shopfronts and
  guild charters are bought, so the people in it should be the ones already
  invested in the world. This is a wall and it is meant to be one.
- **Racing: 5.** Not a wall — a filter, so a lobby is people with something at
  stake rather than an account made an hour ago to spoil one.
- **An exotic pet: 500.** See above.

Wardens pass all of these, as they pass everything else.

### Crates: eight became thirty

There were **eight** named fixture crates across sixty-six thousand tiles, which
meant a player who had walked the world for a week had seen every one. There are
**thirty** now. The twenty-two new ones are **caches** — no famous item, no key,
just guards and a haul, and each may be opened **once ever**.

And a new rule across all of them: **one fixture crate every ten days.** They are
permanent and they do not disappear when opened, so what stops them being a tap
is now the wait rather than the walk.

### Sneed Hall's bath house

The chapels in the guild hall are baths now. Five people work the wing, two of
them with a tray, and the lesser potions are on the guild's coin rather than
theirs. The guild voted on it, which is the most Sneed thing that has ever
happened to a building.

### Smaller things

- **No more white page between worlds.** Crossing to Waterworld or Space World
  used to blank the screen while everything reloaded. There is a proper
  transition over it now, dressed for wherever you are going.
- **Your pets look like themselves.** The exotic animals were drawing as
  chickens.
- **The conjuring bath means something.** The ritual used to work from anywhere
  in the world; it wants the font now.
- **A seventh clerk** sits in the Chamber, selling guild charters at a hundred
  GOLD — half of it burned in front of you.
- **A raw T-bone** exists. There is exactly one grill in the world and it is not
  open to the public.

### Deploy day

Five things shipped broken and were fixed the same day, and they were all the
same kind of thing: **something existed that nobody could reach.**

The bath house had nobody in it. The seventh clerk could not be seated. Nobody
could stand on the back porch. The counter at Dominic's would talk to you about
bots and refuse to sell you one, because it wanted you to stand where the
barista was already standing. And Player City itself would not open, three times
running, each time for a different door.

While looking into the last of those we also found that **two of Waterworld's
ten zones had never been reachable** — the Drowned Chapel and its Hallowmere had
exits and no entrances. Both are open now. That one predates this release and
nobody had reported it, which is the uncomfortable part.

---

## [0.24.0] — 2026-09-03

**Live.** A place to keep a shop, an errand that crosses worlds, a row of clerks
who will not stop talking about forms, and eighteen titles worth collecting.

### The Chamber of Commerce

A Romanesque hall of grey stone under a dome, on the harbour road **outside** the
town proper — so everyone who lands at the harbour walks past its door on the way
up to the plaza. Inside, two colonnades run the length of a nave to a rotunda at
the north end, and six clerks sit at desks down both sides, each with a scroll and
an opinion. Between them they treat a zoning ordinance and a working spell as the
same kind of problem, which is the joke.

**You can rent a shopfront.** Sit down at a clerk's desk — you sit to do business,
which is what the chairs are for — and say how many epochs. A quarter of a GOLD
the epoch, which is a GOLD a day, half to the Treasury and half to the collector.
The lease runs from where you buy it: renew while it is running and it extends;
renew after it has lapsed and it starts from now, because a shop that lapsed a
month ago does not get that month back. The shop is a room of your own off the
Chamber's west aisle, and what fills it is your stock.

### The Lesser Seal — the canyon's first errand across worlds

Underclerk Pettifor has lost a key. Small, brass, bites at one end. It opens the
Lesser Seal press, and the Lesser Seal press opens **nothing**, but he is
responsible for it.

He sent the press up to the Solar System office for calibration — quarterly, do
not ask — and it came back and the key did not. Something down in the dark has it
now. Finding it means going to **Space World**, into the Ink Deep, and taking it
off the thing that has it.

If you have **already** raided down there, you are not locked out. The key rides
the chest's repeat reward rather than its named prize, precisely so the players
who went first are not the ones shut out.

### Badges

Eighteen titles to collect, awarded as you go rather than claimed — among them
**World Traveller** for seeing every world there is, **Landlord** for holding a
shopfront through enough epochs, and **Philanthropist** for the crates you sealed
that somebody else opened.

### Chairs

You can sit down. Chairs are drawn with somebody in them, you stay sat when the
tab closes, and a chair is held only by the person actually in it.
(Contributed by **XanderBrendon**.)

### Smaller things

- **Repairing the Paladin's armour costs 3 GOLD**, and that gold is **burned** —
  it leaves the world rather than moving around inside it.
- **Your crates show the token they hold**, and crates can be sealed in bulk.
- **Space World has a name.** It had been called "Default Realm" — the install
  default, never overwritten — for the whole life of the world.
- **A world now says what it is**, and the client stops guessing. Names, gates and
  destinations come from the realm itself rather than from a list compiled into
  the client months earlier.

### The Chamber's door, the same day

The Chamber went live in the morning **sealed**. The hall existed, the shopfronts
existed, the rent was set, and there was no way in from anywhere. Later the same
day it turned out to have no clerks either — all six had been silently refused,
so the desks were drawn and nobody was standing at them. Both are fixed and the
hall is open.

Worth saying plainly, because it is the useful part: **every check we had said the
Chamber was fine.** Both faults were found by walking to the room. That is now
written down as the thing to do before calling a place finished.

### Terms

The Terms were updated to **1.2**. They now carry a **bot policy** — a named,
non-destructive hold that can stop an automated account from gold-bearing activity
without removing the player or taking anything already earned — and a **data,
indemnity, arbitration and accessibility policy**. You will be asked to accept
them again on your next visit.

---

## [0.23.2] — 2026-09-03

**Live.** Two doors that were shut to people who had already opened them.

### The Dragon Temple can be entered

The doorway between the two stone dragons was a door, was walkable, had no
gate on it — and turned you away saying you were not standing on a portal. You
were. The temple could be **left** and never **entered**.

### Bound torches cross between worlds

Bind fifty torches at the Masonry, sail to Waterworld, and the Kelp Cathedral
would still ask you for fifty. Your torches are held in one place for the whole
canyon, but each world kept its own note of how many you had, and only Luméira
was ever told. The count now travels with you
([#26](https://github.com/Smugandcomfy/delulu_canyon/issues/26), reported by
XanderBrendon).

**If you are already in another world**, cross home and back once after this
update — the count travels with a journey, so it needs one to catch up.

---

## [0.23.1] — 2026-09-03

**Live.** The Dragon Temple, a temple full of stakeholders, and a world that
costs less to walk through.

### The Dragon Temple

The Paladin's armour is no longer taken off a shelf. It is **sacrificed for**, in
the dragons' own house: a hall in the **Dragon Sanctum** with two dragons in
stone at the door, standards down the nave, the DKP mark on four pillars, and a
raised dais you climb to make the offering. The Mausoleum's slab on the graveyard
road is gone; the altar moved, and so did the words.

### The armour looks like the Society it comes from

Four **Dragon Paladin houses** — Emberguard, Ironscale, the Gilded Wyrm and
Nightwyrm. Plate with pauldrons that overhang the shoulder, membrane wings, a
drake's head with swept horns, and a burning sword. One right, five faces: earn
the armour and **all of them** unlock in the avatar menu, the original Paladin
included, and you may wear whichever you like whenever you like.

### The Temple of the NNS, and its congregation

The temple has a colonnade, a nave and fifteen marble figures. It also has
**network stakeholders** — clowns, who hit like a skeleton and take coins. They
are penned inside the precinct and cannot leave it: not when they wander, not
when they are restocked, and not when they are stood back up after dying.

### The Great Halls get a roof

Buttresses and a nave roof over the guild hall, so it reads as a cathedral from
the outside rather than a large room.

### Quieter underneath

A walk now costs the world a fraction of what it did. Nothing about walking
changes for you — the same steps, the same speed — but the realm was searching
every monster, chest and person in the world on each one, and now asks only the
place you are standing in.

### Fixed

- The menu no longer pushes the top of the screen down behind the chat panel
  ([#24](https://github.com/Smugandcomfy/delulu_canyon/issues/24)).
- Standing on the altar with whole armour and nothing owed used to show **no
  action at all**, which read as broken. It now says the armour is whole.

---

## [0.23.0] — 2026-09-03

**Live.** Quieter worlds, safer travel, and a canyon that tells you when it is
being worked on.

### The world stops paying to be empty

A world with nobody in it used to keep its heartbeat running anyway, fifteen
times a minute, around the clock. It now **parks itself when the last player
leaves** and wakes the moment somebody acts. Nothing is lost by stopping: an
empty world was already frozen — no monsters moved, no epoch turned — so this
only stops paying to be told so. Waterworld and Space World spend almost all
their time empty, and almost all of what they were spending was this.

### Being worked on is not the same as being broken

Upgrading a world used to look exactly like a world falling over: the same
error, the same silence, the same red text once a second. There is now a
**maintenance state** the canyon can say out loud. The door tells you the canyon
is being worked on rather than that something failed, the status line says it
once instead of scrolling it, and it says **"the canyon is open again"** when it
is.

Two smaller things went with it. A failed name lookup **used to log you out** —
the login was never the problem, the world was simply stopped, and your session
is kept now. And a world that cannot be reached will no longer offer to make you
a second character; it says it cannot see the world, which is the truth.

### Three ways to lose something, closed

- **A traveller now lands whole, or does not land at all.** An arrival decided
  its last refusal *after* it had already begun placing you. A world it could
  not fully receive you into would half-place you and then say no — and the
  journey went home while a copy had already arrived. Every refusal is now
  decided before anything is written.
- **A journey that has not settled cannot be raided.** The record of a trip in
  progress is now the only thing consulted when deciding whether a character may
  be cleared away. Absence used to be read as "safely arrived", which it never
  was.
- **A door that refuses takes nothing.** Some gates took the key, the tombstone
  or the toll and *then* found another reason to turn you back. Payment now
  happens where you actually step through, and nowhere earlier.

### Blades

Trade is refused outright while a journey is unsettled, in those words, at the
first step rather than the last — so a trade cannot be half-arranged around a
crossing.

### For realm owners

A small standing list of trusted players may take the Paladin's armour without
paying and pass a torch gate without a torch. That is the whole of it: no other
power, and only a realm owner may write the list.

---

## [0.22.1] — 2026-09-03

**Live.** Safety is somewhere you can see.

### The surface is not a sanctuary any more

Blades used to be sheathed above the second floor, which made the whole surface
safe and the whole underworld a killing field — backwards, for a world whose
towns are on top. Safety is now **local, and visible**: within **ten paces of a
shop door**, **five of a portal**, and inside a town entire. The named truce
grounds outrank all of it — the guild halls, the Ossuary, the Orbital, the Space
Race rink, and any room holding a live boss, because a raid is the one moment
the canyon makes you cooperate.

Step off a road far from a door and you are fair game, at any depth. The warning
now speaks on the **crossing** into danger rather than on every field it can
reach, and it names what actually keeps blades sheathed.

### The armour answers everything

The Paladin's three thousand points used to stop players only, and monsters
ignored them. Armour is armour: it now absorbs **every** blow, from a wolf or
from the Void Octopus alike. The consequence is deliberate — the Octopus is now
the cheapest way to strip a suit, and mending is what makes that a cost rather
than a trick.

---

## [0.21.0] — 2026-09-03

**Live.** Friends, phones, and a set of blades that are not drawn yet.

### Parties, and the whisper grows up

You can gather a **party of up to eight** — and it holds together across
worlds, because a party is not a thing any one world owns. Invite by name,
leave when you like, and the longest-serving member takes over if the leader
wanders off. Party chat rides beside zone chat with the same manners: the same
rate limits, the same mutes, the same moderation.

Whispers were always the direct message; now they remember. **Unread counts**,
a **read mark** that does not un-read itself when you open an old tab, and your
messages grouped **by the person you were talking to** instead of one long
column. A stranger who whispers into silence is throttled after a while; a real
conversation never is, because one reply forgives the whole backlog.

### The worlds, from the front door

The login screen now lists every world with **how many people are in it right
now** — **Earth**, **Water**, **Solar System**. A newcomer is *offered* the
quietest one rather than pushed there, and only ever a world that can actually
take them.

### Phones

One card at the top of the screen: the menu on the left, your health on the
right, your coin underneath, and the whole menu unfolds downward from that same
card instead of floating over the health bar. Two long-standing annoyances are
gone with it — **the dark rectangle that sat over the map** (an ambient layer
that never resized when your screen did) and **pinch zoom sticking** at full-in
or full-out. A double tap now resets the zoom.

### Blades, sheathed

Player-versus-player is **built and shipped, and switched off**. When it is
turned on it will live only below the second floor, never in town, never in a
guild hall, and never in a room where a boss is standing — a raid is the one
time the canyon makes you cooperate. Damage will be a share of what you can
take rather than a flat number, so a veteran and a newcomer die in the same
number of blows and the weapon decides. There will be no looting the dead.

### Also

- **Quests no longer nudge your karma just for being finished.** A quest that
  means to move you still does; what is gone is the drift that made the last
  chapter's door unreachable for anyone who simply played the story.
- **A half-made character is no longer a life sentence.** If registration got
  half-way — a name written, the rest refused — the game finishes the job on
  your next visit instead of leaving you in a black world for ever.
- **A journey that turns back tells you why.** Arriving in a world where
  somebody already has your name used to bounce you home in silence.

---

## [0.20.0] — 2026-09-03

**Live.** The Dark gets a purpose, a third world opens, and the first raid boss waits at the bottom of it.

### Dark seasons

The Keeper's gold now follows its mood. When the world is Bright it rains chests as always; when it is Dark, the flow narrows to a trickle — and most of that trickle now hides in **fixed chests behind bosses**, not scattered in the open. Dark times are for quests, for bonds, and for the brave few who go looking where the monsters are. The Hoard's promise to tombstone-holders comes first, always, before a single Dark chest is funded.

### Space World

A third world, reached by a new gate southwest of Luméira: **the Solar System** — ten planets adrift in a starfield void you cross by shuttle. Same rules, same money. There is no town and no shop on any surface — every store, forge and bank lives inside **the Orbital**, a station you enter through its airlock. New things the void parts with: Stardust, a Meteor Blade, a Void Lantern, a Comet Core. And a suit: hotkey any NNS or SNS neuron and claim the **star-suit** — only the suited may pass the airlock into the gauntlet below.

### The bosses, and the first raid

Five great monsters now hold the deep places, each guarding a fixed chest with a treasure worth the fight: the **Obsidian Wyrm**, the **Forge Tyrant**, the **Marrow King** (in the canyon), the **Leviathan** (beneath Waterworld) — and, at the bottom of Space World's suit-gated gauntlet, the **Void Octopus**: two thousand hit points, wounds that do not heal between visits, and the **Ray Gun** waiting behind it. This is the first fight built for a crowd.

### The Space Race

Under a ringed planet, a rink of pure void: gather two to five, line up, and fly. First over the line wins, and the whole world hears about it.

### Waterworld doubles

Twice the size, with its shops each on their own island — a chandlery, a forge, an inn, a strongbox — and the Leviathan's own dungeon opening off the south shore.

### A world with a soundtrack

The background hum becomes music: a grown theme for the canyon, bright island calypso for Waterworld, a techno pulse for the Solar System, a racing beat on the rink, and a low unsettling drone in every dungeon. One toggle still silences it all.

### Also

- Quest-bound treasures (the Soul Gem, the tide-quarters, the Ray Gun) can no longer be dropped, traded or given away — no more losing the one thing a quest needed.
- Reaching a new world **attunes** you to it, the first step toward fast travel.
- Every world can now talk in world chat.

---

## [0.19.0] — 2026-09-02

**Live.** The stories wake up, the guilds get their halls, and Waterworld gets
its first quest.

### The four stories come alive

The [four stories](docs/guides/quests.md#the-four-stories) — the Drowned Bell,
the Smugglers' Cache, the Bard's Ballad, the Doll-maker — were told in the
guide before the world could tell them itself. Now it can. Talk to the person
each story names, walk into the places it happens, read what you find, and the
thread pulls: Sister Ashwyn will really hang the bell and it really rings
across the water on every turn of the Keeper from then on, with a 🔔 in your
chat when it does. Pell really sings one finished player's name on every
Bright turn. The doll-maker's last chapter really waits under the Crypt, and
finishing it really pays. And page seven's riddle really opens a place in the
third cave that was not there before — once for each person who reads it,
never a race, with the smugglers' own chance of something far better than
dust inside.

### The Four Tides — Waterworld's first quest

Four keepers of the tide stand on the isles, each holding one quarter of
something old. Earn all four, bring them to the cauldron by the Crypt in
Luméira, and brew the **Tideflame Censer** — the canyon's first casting
weapon. It throws fire five tiles for 25, needs a breath between castings,
and swings like a stick if you insist on using it up close.

### The great halls

The Sneed Guild Hall stops being a borrowed dungeon: a nave thirty tiles wide
and two hundred deep, side rooms set like the Ossuary's pub, banners, hearths,
and at the far end an altar carrying the guild's own mark — read live from its
SNS, because the chain says what a guild looks like. The Tendys Hall rises in
the same shape. Each hall keeps four **dispensers**: chests that never empty
and never race — each rolls its own table for each player, once an epoch.
Potions in one, cutlasses in another, the wider table in a third — and rarely,
from the fourth, the guild's **standard**: a flag carried as a staff that
calls lightning fifteen tiles for 15. Long reach pays in lighter damage; the
censer's short flame hits harder.

### Also

- Waterworld's dungeons now carry their true names on the map.
- The clapper's chest in the flooded nave **re-arms** after its wait — the
  Drowned Bell is a story every player can finish, not a race one player won.
- **Pippin re-bakes.** Lose the Loaf — eat it in a bad moment, drop it, spend
  it unwisely — and three herbs at his oven make another. Lost bread is a
  trip, not a dead end.
- Housekeeping on travel: a journey that settles now tidies away every trace
  of the traveller in the world they left, and journeys settle one at a time.
- The gate to Waterworld now stands where it belongs: southwest of Luméira's
  town, south of the harbour, between two fountains, with a sign that says
  what it is.

---

## [0.18.0] — 2026-09-01

**Live.** There is a second world, and a boat between.

### Waterworld, and how to get there

**Waterworld** is a new realm — one main island, bridged isles, shallows a
boat can cross, six dungeons of its own — running as its own canister, with
the same rules and the same money. The door is the **Waterworld Gate** in
Luméira; step through and the canyon hands you over.

Travel is honest about what it is, so the rules are strict and worth knowing:

- **Bank before you sail.** Carried gold and unbanked pouches do not travel —
  the gate refuses you until they are safe in a vault. What is banked is yours
  everywhere.
- **You, your gear, your pets, your story travel.** Name, level, inventory,
  equipment, titles, quests, curios — the whole character steps through.
- **Crates travel as claims.** A sealed crate in your pack arrives with you,
  and opens in either world for exactly what it says.
- **One of you.** While you are mid-journey the world you left holds its
  breath for you; there is never a moment with two of you, or none.

The **Wayhouse** — a small canister whose only job is the handover — keeps the
registry of worlds and escrows each traveller between them. Global chat now
carries a world tag, so the canyon and the isles can hear each other.

---

## [0.17.0] — 2026-09-03

**Live.** Players can put their own tokens into chests now — and give them away,
lose them, or leave them lying in a hall for a stranger.

### User chests: seal a token, and the crate travels

Every chest in the canyon so far had the world behind it: the Keeper's mint, or
a sponsor's treasury. What players owned stayed in wallets and vaults. This
release hands the chest itself over.

At the Bazaar you can now **seal any ICRC-1 token into a crate** — GOLD, TORCH,
or anything else, imported by its ledger canister id. The crate is a thing in
the world: carry it, drop it on the ground for whoever finds it, or hand it to
a neighbour standing beside you. Whoever opens it is paid **exactly what the
crate says**. A birthday present, a bounty, a trap for the curious, a tip left
on a table — that part is up to you.

The honest details, because a crate holds real value:

- **The value never travels.** While the crate is out in the world, the tokens
  sit where they were sealed — in the Bazaar's books, the same audited books
  that hold every trade, the ones it checks against the ledgers on a timer and
  publishes. The crate is the claim on them, nothing more.
- **A crate that rots unopened refunds its maker.** Like any dropped thing, a
  crate on the ground decays after long enough — but the tokens inside go home
  to whoever sealed them, not to anyone else and not to nowhere. The seal fee —
  the larger of three ledger fees or half a percent — does not come back.
- **Crates fall with you.** Die carrying one and it lies with your body, and
  anyone who walks past may take it. That is what carrying means here, and
  crates are not an exception to it.

### The id is the only honest name

Anyone can deploy a token and call it anything — nothing anywhere makes token
names unique, and a stranger's crate marked with a familiar name is exactly
where that matters. So the Bazaar now shows **the ledger canister id wherever a
token is named**, and tokens no operator has vouched for are marked plainly as
**unvetted**. Before you value a crate by its label, read the id — the label is
whatever its maker wanted it to be; the id is what the token is.

### Fixed

- **Sponsor chests hold still.** They had been drifting across the screen when
  the camera rotated, as if the chest were somewhere it was not. It draws where
  it stands now.

---

## [0.16.1] — 2026-09-02

**Live.** A small release with one job: the Crypt's promise is now set aside
before anything else may spend from the reserve.

### The Hoard keeps the Crypt's gold apart

The Crypt saw its first real use this week: players buried gold for tombstones
while the price sat below the peg. A tombstone is a promise — dig it up when
the price recovers and the Hoard pays you back, at a premium if it recovers
far. Until they are dug up, the Hoard is what stands behind them.

The parts of the Keeper that spend from the Hoard did not all agree on what
"spendable" meant. The chest funding already set the tombstone promise aside;
one other path did not. Nothing went wrong — the reserve comfortably covers
every tombstone outstanding, and it did throughout — but with the Crypt now
genuinely in use, "nothing went wrong" is not the standard.

There is now exactly one answer to "what may the Hoard spare?", used
everywhere: the balance, less what it owes tombstone holders at today's rate,
less anything already promised to a payout in flight. Every spender draws from
that surplus and stops at its edge, visibly. Nothing about today's play
changes; what changed is what cannot happen later.

---

## [0.16.0] — 2026-09-01

**Live.** Gold can now be worth a fraction of itself, the deep floors have
something permanent in them, and the world is a good deal richer in things to
find.

### Gold comes in pieces now

Every amount of gold in the world — in a chest, in your hands, in the bank, on a
body — was a whole number. The smallest a chest could hold was one whole GOLD,
and since a GOLD is meant to be worth about one ICP, that made the smallest
possible find quite a large amount of money. It also meant the only way to hand
out less was to hide fewer chests, which makes for a duller canyon.

Gold is now counted in hundred-millionths. Nothing you own changed value — the
same gold is simply written down more precisely.

**What that buys is a lot more chests, and a real reason to go deep.** Chests now
get bigger the further down you go:

| where | roughly |
|---|---|
| the surface and the towns | 0.002 GOLD |
| the first floors down | 0.005 |
| the gated dungeons | 0.015 |
| the deep floors | **0.04** |

A deep chest is worth **twenty surface chests**. The canyon holds thousands of
chests an epoch now rather than hundreds, and where you hunt matters more than it
ever has.

### Eight permanent chests, and the keys that open them

Scattered chests come and go. These do not.

**Eight chests now stand permanently in the world** — five on the deep floors,
three out in the open — and they look the part: heavier, banded, brass-locked.
Each holds a named item that belongs to that place and nowhere else, and **each
player can take it once, ever.** Two people can claim the same one at the same
time; nobody races anybody.

They are locked, and they are guarded. The key for a deep chest is carried by the
things living in the **gated dungeons**; the key for an outdoor chest by the
things living in the **open country** around it. Keys are spent when used, so
each trip down is earned somewhere else first.

The named items sit deliberately below the relics — good enough to change how you
play, never good enough to make a relic ordinary.

### Relics come from the deep now

Relics used to be possible from any chest, anywhere, at a rate so thin that in
the whole life of the world **not one had ever been found.**

They now come only from the deep floors, and far more often there. The deep tier
is where the rarest things in the game live — which is what the guards, the keys
and the walk were always supposed to mean.

### Also

- **The Keeper can be asked what it is running.** It mints the world's gold and
  had no version to report until now.
- More to find everywhere, from the same amount of gold — the change that makes
  all of the above possible.

## Beta sprint over: the oracle brought to game-time mechanics — 2026-09-01

**Live.** This one changed the Keeper rather than the realm or the client, so
neither of their version numbers moved — the world you connect to is still on
`0.15.2`. What changed is the thing deciding how much gold exists.

The beta sprint was about building the world. This one was about making the money
behave like the world does — on game time, at game scale, reacting to what is
actually happening rather than to a number that stopped being true.

### The short version

The Keeper mints new GOLD when GOLD trades above its peg. That is the whole point
of it. But the size of the mint was decided by one thing only — how much GOLD
exists — and it never once asked the question that matters: **how much GOLD can
the market actually take?**

Those two numbers turned out to be about **forty times apart.** The Keeper was
minting roughly forty times more gold per epoch than the market could absorb, so
the mint that was supposed to walk the price back down to the peg pushed it
further away instead. Then it did it again six hours later.

That is fixed. The mint is now the **smaller** of the two rules: the old share-of-
supply ceiling, and what the market can genuinely absorb at the current depth and
the current premium. When the market is thin, the Keeper mints little. When the
market is deep, it can mint more. It can no longer mint into a wall.

### The oracle was reading a price that had stopped existing

The Keeper reads the price many times through each six-hour epoch and takes the
middle reading, so one strange trade cannot set the epoch's number. That part was
right and is unchanged.

What was wrong is what happened when the market genuinely moved. The Keeper
decided early in an epoch roughly where the price was, and then refused anything
too far from it — including, it turned out, the price itself. We watched a real
recovery get turned away reading after reading for half an hour while the Keeper
sat on a stale, much lower number.

Now the Keeper tells the difference between a spike and a move. One odd reading is
still ignored. A **run** of readings all saying the same thing is recognised for
what it is — the market has moved — and the Keeper moves with it. It also now
requires a great deal more evidence before it will mint at all; if it has not seen
enough of the epoch, it does nothing, which is the right answer to "I could not
see the price properly."

### The dungeon no longer goes quiet when the price is weak

This is the change you will actually feel.

Gold chests used to appear **only** in Bright epochs — only when the Keeper was
minting. So whenever GOLD traded at or below its peg, the world stopped producing
gold entirely. The dungeon went quiet at exactly the moment it most needed people
in it. That was backwards, and it is now fixed: **gold chests appear every epoch,
in every mood.**

They are funded from the **Hoard** — gold that already exists and has fallen back
out of the world. Chests nobody found before they crumbled, bodies nobody walked
back to reclaim, gold bitten off the careless in the dark. That gold is not
destroyed; it returns to the reserve, and the reserve now sends it back out as
chests. Nothing new is created. The world's own losses stock the world's floors,
which is what the Hoard was always for.

The Hoard cannot be emptied doing it. Only a limited share of it may be spent in
any one epoch, so it gets smaller and smaller without ever reaching nothing, and
the world keeps refilling it. It is a reserve, not a piggy bank.

### And the gold moved to where people actually go

Alongside the above, the share of each epoch's gold going to each part of the
canyon was rebalanced — the first time it has been touched since the world opened.

We looked at where the gold actually *is*, rather than where it is sent, and the
two turned out to be very different. The shallow, ungated ring — Luméira, the
Antechamber, the Highland, the Grove, the Hallowmere — was being stripped bare
inside a single epoch, every epoch. Meanwhile the floors under the Castle Tower
had quietly accumulated more than half of all the gold lying in the world, simply
because far fewer people go down there. Luméira looked poor not because it was
given little, but because it was the one place everything got found.

So the split is now **half to the accessible ring, a fifth to the gated middle
dungeons, and the rest to the deep floors** — where before, the accessible ring
was receiving under a fifth of it. In practice the surface should feel about as
rich as it did, out of a much smaller total, and the deep floors should stop
hoarding gold nobody is collecting.

The gated middle dungeons take the largest cut of gold in this change. That is
deliberate: gear is the reason to run that tier, and they were already stocked
with far more item chests in the last update.

### What this means for playing

- **Every mood is worth playing now.** Dark and Quiet epochs stock gold chests
  like Bright ones. Dark still opens the Crypt and still lets the monsters roam;
  Quiet is still the time for errands and gear. What has gone away is the dead
  patch where there was simply nothing to find.
- **Gold will be scarcer per epoch, and that is the point.** The Keeper was
  handing out gold it could not back. What it scatters now is gold the market can
  actually carry, plus everything the world has lost and recovered. A chest means
  something again.
- **Item chests are unchanged.** Gear kept appearing in every mood throughout, and
  still does.

### Under the hood, briefly

- The expansion mint is bounded by real market depth as well as by supply.
- The Keeper measures depth conservatively across a whole epoch rather than
  trusting a single moment.
- If the Keeper cannot read the market at all, it mints nothing rather than
  guessing.
- Chest funding, the mint rule and the reserve limits are all tunable while the
  world runs, so the economy can be adjusted without another update.

---

## [0.15.2] — 2026-08-31

### Better

- **More to find in the dungeons.** The gated dungeons — the Bone Halls, the
  Drowned Chapel and the deeper floors beneath the Tower, the Sanctum, the Grove
  and the Hearth — now hold noticeably more item chests, and they stay stocked.
  Gear is the reason to go down there; gold is the reason to go out. Luméira stays
  quiet on purpose: the world wants you to leave it.

- **Security hardening from a full adversarial review.** We put all six of the
  game's on-chain services through a deliberately hostile review (see the
  [audit log](docs/audit-1.md)). Nothing found could move or duplicate anyone's
  tokens. What it did find is now fixed: a setup call that did part of its work
  before finishing its permission check, some actions that were not yet behind the
  same per-account throttle as everything else, and two small internal-accounting
  tidy-ups in recent code. None of it was ever reachable in a way that touched a
  player's balance.

- **The heartbeat looks after itself now.** Following yesterday's stoppage, the
  world's clock has a second line of defence: if it ever stops, the next player who
  moves quietly starts it again. It also reports its own health, so a stopped clock
  can no longer go unnoticed.

- **Groundwork for moving the world.** The realm can now take a complete,
  change-detecting fingerprint of everything it keeps — every character, every
  item, every scrap of progress — and a freshly rebuilt world refuses to start
  running until its contents have been restored. Nothing visible changes today;
  this is the safety net that lets the world be moved or rebuilt some day without
  losing a single record.

---

## [0.15.1] — 2026-08-31

### Fixed

- **Monsters and animals stopped moving.** For a while the world's heartbeat —
  the four-second pulse that drives every creature, and with it health
  regeneration, poison, hatching eggs and the slow decay of forgotten chests —
  stopped running. Everything a player *did* still worked, which is why it looked
  like a monster bug rather than the clock: you could still walk up and kill an
  ash hound, it simply would not fight back. It is running again.

- **And it can no longer stop like that.** The heartbeat used to be arranged so
  that a single bad beat would end it permanently, with nothing to say so and no
  way to restart it short of a full deployment. A bad beat is now survivable, the
  world reports the health of its own clock, and it can be restarted directly.

### Better

- **Housekeeping the traders had been quietly accumulating.** A per-turn record of
  who traded with whom was being kept for ever instead of for the turn. Nothing a
  player would notice today, and nothing lost — but it would have grown without
  limit, and the world now counts it so it cannot grow unseen again.

- **A ceiling on how much the world will describe at once.** With a crowd in one
  place — the plaza by the vault and the store — there is now a firm limit on how
  much is sent to each person in one go. Nobody hits it at today's numbers; it is
  there so that a busy square stays as quick as an empty one.

---

## [0.15.0] — 2026-08-31

The largest release so far, and most of it is one shape: things the world
promised and did not do. A sweep across every errand, every person you can talk
to, and every refusal the game was swallowing turned up a long tail of them.

### Fixed

- **Quests you had finished would not finish.** Telling someone their errand was
  done did nothing, and the quest log went on saying it was ready to hand in.
  Talking to people is what moves an errand along, and the game had been asking
  the world a read-only question — one that cannot change anything — for every
  reply except the very first one on the list. Every reply counts now, whichever
  one you pick.

- **Eggs did not count as eggs.** They are kept in the nursery rather than the
  bag, and everything that looked for one looked in the bag: the farmwife's
  errand could never be completed, her own market stall sold you an egg that
  would never hatch, and "warm an egg" quietly did nothing at all however many
  you were carrying. Eggs are counted where eggs live now, and warming one tells
  you what happened.

- **Arriving somewhere by boat, door or ring did not count as arriving.** The
  ferry set you down on the exact square an errand named and the errand did not
  notice — and standing there made every later attempt fail too. Being carried
  somewhere counts the same as walking there.

- **A reward the Keeper could not pay was simply lost.** Some errands are
  once-only, so there was no second chance at it. What cannot be paid is now
  written down as owed, and there is a "Claim owed TORCH" entry in the ☰ menu
  that pays it when the Keeper can.

- **Choices that promised something and delivered nothing.** An option you had
  already taken still offered the same reward and did nothing when clicked. It
  now says you have already had it, and stops advertising what it cannot give.
  Three of the Dragon Wizard's answers shared one memory between them, so
  whichever you picked first killed the other two — they are separate now.

- **Handing over goods you did not have enough of said nothing.** The
  conversation moved on and the errand did not. Whoever you are talking to now
  tells you how many more they need, and the button stops offering a trade you
  cannot make.

- **Traders said "none left this turn" at the start of a turn.** Their stock and
  purse refreshed only when somebody, somewhere, completed a trade — so a new
  turn could open with everything greyed out and a reason that was not true.

- **The way into the Ossuary could not be knocked on.** The door asked to be
  knocked on before it would read your standing, and nothing could knock. It
  opens now — and there is a pub down there, with a landlady, a hearth and
  food.

### Better

- **The alchemist has the cauldron he tells you to use.** He had been sending
  people to a cauldron that did not exist anywhere in town, which made his own
  errand impossible to start. He mends blades at his own counter now, too,
  instead of quoting prices for a service he could not perform.

- **Old Corliss stands at the harbour.** The ferryman had been keeping his boat
  in the middle of the town square, some fifty squares from any water.

- **An Ancient Key is on the shopkeeper's shelf.** One key existed in the whole
  world at a time and reappeared roughly every four days in a fixed spot, so two
  people could not attempt the tower in the same week. Ten GOLD, as the guide
  always said.

- **The ending is reachable by playing the game.** The Wizard's reading of your
  character had been written for a much narrower range than ordinary play
  produces, so doing the errands in order was itself enough to close the door on
  the Soul Gem. The reading has been re-pitched, and the three places that judge
  whether you are "balanced" now agree with each other.

- **Kindness is worth something at last.** The discount and the better price a
  generous character was promised had never actually been applied to anything.

- **Leaving the world is a real thing you can do.** The ☰ menu's "Leave the
  world" steps your character off the map entirely, where nothing can reach
  them, and puts them back where they stood next time you play.

- **You can put things down.** Items can be dropped from the bag for anyone to
  pick up — the chests that get left behind have been drawn for a while, and now
  something can create them.

- **The action bar shows more, and stops offering what cannot work.** It fits
  four things instead of three and says when there are more; it no longer offers
  a bed at seven doors that are not the inn; and a button whose target has moved
  on says so rather than doing nothing.

- **The quest log knows where you are standing.** Its Accept and Hand-in buttons
  could sit greyed out telling you to walk to someone you were already next to,
  for up to fifteen seconds.

---

## [0.14.4] — 2026-08-31

### Changed

- **Signing in now goes to the identity host the network points people at.**
  The old address had been intermittently failing to complete, which — until
  this was fixed alongside it — quietly handed people a second, empty account.
  Nobody's account changes and nobody is signed out: both addresses are the same
  identity service, so the same anchor still gives the same player.

- **The guild's "Re-check" button says what it does.** It never asked governance
  — it forgets what the door remembered, and the door asks for itself when you
  stand at it. Pressing it and seeing no change looked like the game had not
  noticed a newly hotkeyed neuron. It is now called "Forget verdict" and tells
  you to walk to the door, which is where the real answer comes from.

---

## [0.14.3] — 2026-08-31

### Fixed

- **Signing in could quietly give you a brand new character.** If the identity
  window did not complete — you closed it, a popup was blocked, the network
  hiccuped — the game signed you in a second way that produces a *different*
  account, and you arrived with an empty bag. Nothing said so. It now stops,
  tells you the sign-in did not finish, and asks you to try again rather than
  make a new character. If this happened to you, the ☰ menu has an account
  recovery panel that will find which sign-in holds your things.

- **Barter never worked, for anybody, on any device.** The trade window threw
  away the trade the moment it opened, so it drew an empty purple panel with no
  buttons — and because it never told the world you had left, closing it made it
  reappear until you walked away. One line, both halves. Trading works now.

- **The compass no longer sits on top of your name.** The distance moved above
  the arrow, where there is nothing to collide with.

- **Tapping the world is steadier on a phone.** The gesture handling that was
  fixed last release now stands on its own and is properly covered, including
  the case where a touch is lost mid-pinch.

---

## [0.14.2] — 2026-08-31

### Better

- **A square you could plainly see is open is open.** After a fight, tiles ahead
  of you could answer "you can't walk there" while the way back stayed clear —
  and walking back the other way cured it. The game had remembered that something
  was standing on a square, and never forgot it once the something had gone.

- **Coming back through a door puts you at the door.** Returning from one of the
  gated places could land you in the far corner of the map instead. Every way
  back is now sound, including the ones that were never properly tied to their
  door in the first place.

- **Staking, burying and digging up repeat properly**, in the same way buying
  does — a round number of TORCH could be staked once and then refused until the
  next day.

### Housekeeping

- The DAO's share of TORCH has been released to Tendys governance, as the
  emissions plan set out at genesis: seven thousand, no vesting.

---

## [0.14.1] — 2026-08-31

### Better

- **You can buy the same thing twice.** Buying a second seed cake — or a second
  anything at the same price — was refused, and it stayed refused, because the
  price does not change. The ledger was quite right to think it had already seen
  that exact payment; nothing distinguished one purchase from the next. Every
  payment now carries a marker of its own. Nothing was ever at risk: a refusal is
  a refusal, and no gold moved.

- **The ferry, the inn and a mended rod are repeatable too**, for the same
  reason, and they no longer blame your wallet approval when something else went
  wrong. They say what actually happened.

- **Staking, burying and digging up are repeatable too.** The same shape reached
  the Keeper: a round number of TORCH staked once could not be staked again that
  day. Round numbers are exactly what people stake.

---

## [0.14.0] — 2026-08-31

### New

- **The Ossuary keeps a pub.** A hearth, tables, chairs, and Maudy Ashgrave
  behind the counter with hardtack, salt cod and honeycake. Board, not physic —
  she does not stock what the chests give away, and will say so if you ask.

- **A second shop.** Sable Ironhand keeps a forge in Lanternfall and deals only
  in edges: a ladder of weapons from bone through elvish steel, each one a real
  step up from the last. Old Bessany still sells the biscuits.

- **The Ancient Key can be found.** It sits in a chest on the Hill, in a fixed
  spot, the same for everyone — rather than behind the door it opens.

- **Account recovery, in the ☰ menu.** If you arrived by a different address in
  the past, you may have been signed in as a different player without knowing.
  Type the name you used to play under and it will tell you whether that
  character is this sign-in or another one, and give you something to send on.

- **A sign at the harbour** explaining that the first chest has to be banked
  before anything else will pay out. That was always true and was never said
  anywhere.

### Better

- **Movement on touch devices.** Tapping the world could stop working — usually
  after fast travel — while the map and the menus carried on responding, and only
  reloading the page fixed it. It could also stop after walking past something
  that got in your way. Both are fixed, and tapping is now judged by a finger's
  standards rather than a mouse's.

- **Coming back from a gated place puts you at the door**, or at the heart of the
  zone if the way back was never wired — instead of the very top corner of the
  map.

- **Prices make sense against each other.** The weapon ladder now runs in the
  order the weapons actually hit. The iron dagger had been left on an older scale
  and cost more than weapons several times its worth.

- **Quieter, safer accounting** in the places where gold changes hands, and a few
  ways it could have gone astray closed off.

---

## [0.13.0] — 2026-08-30

### New

- **The Ossuary is open.** It has been built for a while and was never actually
  placed in the world; it is there now, down in Hallowmere, for those who hold a
  tombstone.

- **The Soul Gem Vault means what it always said.** The door was supposed to open
  only for someone carrying the gem and standing at exactly nothing — neither
  good nor wicked — and in truth it opened for anyone who had finished the Flame.
  It now asks for both. Which of Eledrin's jewels you took is a real decision
  again, and the Wizard's reading is worth having.

### Better

- **Planting a position works.** Two separate faults, one after the other: the
  game asked the exchange for something only its operators may ask for, and then
  the plots themselves misread the exchange's reply and stopped dead. Both are
  fixed, both were found by a player, and the second had been broken since the
  plots opened. If you tried and gave up, please try again.

- **The world remembers what order things happened in.** The game asks the realm
  what is around you about once a second, and those answers do not always come
  back in the order they were asked. Occasionally an older answer landed on top of
  a newer one — a chest you had just opened flickering back for a moment, that
  sort of thing. The realm now stamps each answer, and the game ignores anything
  it has already moved past.

- **Quieter chatter between the halls and the square**, which costs the world less
  to run and matters more the more of us there are.

### Note

Two of the fixes above came from players reporting them with the exact error
text. That is what made them findable. If something misbehaves, the wall of red
is the useful part — please paste it.

---

## [0.12.2] — 2026-08-30

### Fixed

- **Planting a position at Brannock's plots works.** It never has. Every attempt
  failed the moment you confirmed it, with a wall of text from the exchange, and
  it failed the same way for everyone — the game was asking the pool to do
  something only the exchange's own operators are allowed to ask for. It now
  makes the request the ordinary way: your approval, the pool takes each side,
  then the position is minted **to you**. Nothing about that changed the rules —
  the position is still yours, still uprootable whenever you like — it is only
  that the game was knocking on the wrong door.

  The plant screen now shows six steps instead of four, so if something does go
  wrong you can see which one it stopped on. Anything the pool does not use still
  comes straight back to you.

  Found and reported by a player, with the exact error text, which is what made
  it findable. Thank you.

---

## [0.12.1] — 2026-08-30

### New

- **The Canyon has its own door: [delulu.game](https://delulu.game).** The game
  now lives at its own address, and the old one keeps working — you are the same
  character either way, with the same gold. Bookmark whichever you like.

### Better

- **The terms screen works on a phone.** It was taller than the screen, and the
  Accept button sat below the bottom edge with no way to scroll to it and no way
  to close the panel. If you tried to start playing on a phone and simply could
  not get in, this was why. Fixed, along with the lore scroll, which had the same
  problem.

- **The Legend and the Lore are in the menu now.** Both used to live only on the
  title screen, so you passed them once — before you owned a single item — and
  could not get back without logging out. They are in ☰ alongside the guide.

- **The first hour makes sense on a quiet day.** If the welcome pouch could not
  be funded, the game still told you to open a chest that was not there. It now
  says so plainly and points you at the vault.

- **Chat says something true when it is reconnecting** rather than showing you an
  internal message, and keeps what you typed.

- The world map no longer calls Luméira "planned" — you have been standing in it
  for weeks.

---

## [0.12.0] — 2026-08-30

### New

- **Five new weapons, and somewhere to buy them.** Between the iron dagger and
  Gabriel's Sword there was nothing at all: a dragon took forty strokes, or it
  took one and cost a fortune. Now there is a rung for every purse — a **bone
  axe**, a **hunter's spear**, an **ashen blade**, a **wyrmtooth sabre** and an
  **elvish longsword**. The sabre puts a dragon down in four strokes. The
  longsword does it in two. Gabriel's Sword is still the finest thing on the
  shelf; it is no longer the only answer.

- **A second store, and deliberately not in Luméira.** **Sable Ironhand** keeps a
  forge in **Lanternfall** — the last town before the Highland Pass and the way
  down, which is where an edge is actually worth buying. She carries the whole
  ladder and nothing else. *"I do not sell biscuits."* Old Bessany still sells
  everything else, and the bone axe, so there is something to swing before the
  walk east.

- **The deep now feels deep.** The wings below the tower, the sanctum, the grove
  and the hearth used to hold exactly the same rats and bats as the corridor by
  the entrance — the same creatures at every depth, only more of them. The lower
  levels now have their own: **cave crawlers** that carry poison, **ash hounds**
  that hunt through the burnt-out caves, and **gloom moths**. And there are
  **ravens** above ground now, over the meadows, the highlands and the graveyard.

### Better

- **Eledrin's jewels.** Choosing a jewel in the Grove could do nothing whatsoever
  — no jewel, no karma, no word of explanation — if you had already finished his
  quest first. It now works in either order, and anyone who lost their choice to
  this can simply make it again.

- **Barter on a small screen.** The trading table had no layout of its own on a
  phone: the two sides ran off the edge, and the window could stand taller than
  the screen with no way to shut it. Both fixed.

- **A shorter welcome.** The scroll on the title screen was long, and most of
  its footnotes explained the machine rather than the place. It is now about
  the world: who is on the plaza and what each of them is short of, what lives
  at which depth, and what is worth walking east for. The detail all still
  exists — it lives in **How to play**, where you can search it.

- **The legend shows everything now.** Every item in the game, including the new
  weapons, and every creature — seventeen of them, where before it named three.

- **The map names the forge.** Sable's counter has a card of its own under
  "Where the work happens", so you can find her without stumbling into her.

- Groundwork across the canisters: guard rails on the public checks, and tests
  covering ground that had none.

---

## [0.11.0] — 2026-08-30

### New

- **The Graveyard is open.** Brannock's plots are live: the farm is funded, both
  pools are registered, and TORCH grows for planted positions from now on. This
  was the last thing standing between the liquidity screen and doing something —
  the screen had been shipped for a while, waiting on the plots.

- **Trading with other players, for tokens.** You could already barter face to
  face — items and the gold in your hands, swapped on the spot. Now you can
  trade what you have **banked**: place tokens with the Bazaar, offer some for
  others, and take an offer somebody else has left standing. An offer keeps
  standing on its own, so the other player does not have to be online, or
  nearby, or even awake. It opens with **GOLD and TORCH**.

  Two things it guarantees. **A trade happens completely or not at all** — there
  is no moment where one side has been paid and the other has not. And **anyone
  can check the books**: it will tell you, publicly, whether it is holding
  exactly what it says it owes everyone. It checks itself on a timer, and if
  that number is ever wrong it stops rather than pays.

  One thing to get right the first time: the address you send to has **two
  lines** and both matter. Use the copy button, which takes both — the second
  line is what makes the account yours.

- **A fee on sending tokens from your wallet.** Sending a token to another
  principal from the in-game wallet costs a small platform fee, **twice whatever
  that token's own ledger charges**, added **on top** of what you send. Whoever
  you send to receives exactly the amount you typed — the fee is never taken out
  of it, and the confirm box names every line before you agree.

  Bringing gold to the vault, buying from the Store, quest rewards and
  face-to-face barter are all unaffected.

### Better

- **Making a liquidity position is a much better screen.** It shows what you
  actually hold of each token, fills in the second side for you as you type the
  first, and puts the pool's current price in front of you before you commit. A
  full-range position takes both sides at a fixed ratio, so the amounts are not
  a guess — the screen works them out. There is a Max on each side that leaves
  room for the fees, and anything you cannot afford is refused before it reaches
  the chain rather than after.
- **The Store settles a purchase in fewer steps**, which makes a busy Store less
  likely to fall behind itself.

### Fixed

- **The Soul Gem can be finished.** The ending quest could not be completed at
  all: its first step never registered that you were holding the Gem, so
  everything behind it — the shaft, the dragon, the vault chest — sat unreachable
  no matter what you did. It also asked for a balance that could not be arrived
  at. Both fixed.
- **A bed at the inn does what it says.** It lasts the twenty minutes it
  advertises rather than eighty seconds, and it now genuinely mends you faster
  instead of only showing a countdown.
- **A dropped crate can no longer overwrite the Tower's chest.** Two different
  things numbered chests from two different counters into the same place, and
  would eventually have collided.

### Under the hood

- Continued work on the parts that hold value, before they hold much: the
  trading system reports its own books, stops itself if they ever disagree, and
  can be put right by hand if they do. The realm's own test suites now run as a
  single command alongside the client's, so the pieces that move tokens are held
  to the same gate as the pieces that draw them.

---

## [0.10.0] — 2026-08-29

### New

- **Provide liquidity from inside the game.** The Graveyard can now make a
  full-range ICPSwap position for you directly. Your own wallet approves the pool,
  and the position is minted **to you** — the game never holds your tokens and
  never holds the position, so you can change or remove it on ICPSwap whether or
  not you plant it here. It names which token is which side, and offers back
  anything the deposit did not use. *(Available once the Graveyard opens.)*

### Better

- **Store prices now suit a world where gold is money.** GOLD tracks ICP, so the
  old prices asked real money for a biscuit. Everyday goods and repairs are far
  cheaper. Gabriel's Sword keeps its price, deliberately — it is meant to be a
  fortune.
- **Signing in fresh is reliable again.**
- **Your character no longer gets stuck able to fast-travel but not walk.**
- **The Wisp Lantern lights what it promises**, and dropped chests say what they
  hold and who left them.
- **Signposts read the words the realm actually holds.**
- Continued work on the parts of the economy that move value between the Keeper,
  the world and the Graveyard.

---

## [0.9.0] — 2026-08-29

The first versioned build, collecting the work from our internal audit. The public
summary of that audit is in the [audit log](docs/audit-1.md).

### New

- The in-game menu shows which build you are on, and which build the realm is on.

### Better

- **Portals work from the action button.** Pressing it the moment you arrive used
  to leave the button stuck until a page refresh. Fast travel was never affected,
  which is why it took a while to pin down.
- **Objects on the ground stay put.** Chests and crates near the edge of your
  sight used to appear and disappear as you moved, and drew underneath anyone
  standing on them.
- **The trade window closes when you close it.**
- **Fog of war no longer follows you through a portal.**
- **A refused dragon bounty can be claimed again** rather than sitting out of reach.
- Groundwork across the canisters: reliability, cost under load, and the paths
  that move value.

### Note

Two audit findings were investigated and **dismissed** — both described a problem
that turned out not to exist, and both now have a test pinning the correct
behaviour so nobody "fixes" them later. An audit finding is a hypothesis, not a
verdict.

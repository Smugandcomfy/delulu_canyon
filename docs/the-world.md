# The world

The Keeper decides how much gold exists. The world decides who gets it, and it
does not hand it over. This document is how one becomes the other.

## Gold falls as chests

The world does not hand gold to anyone. It hides it, and people go and find it.
The floors are stocked **every epoch, in every mood**, out of two purses.

- When an epoch expands, the Keeper does not pay the new gold to anyone. It hands
  it to the dungeon, which hides it.
- Every epoch, expanding or not, the dungeon also draws on the **Hoard** — gold
  that was minted long ago and has since decayed back out of the world. This
  creates nothing. It is the world's own losses going back onto the floors.

The second purse is the one that keeps the lights on. The Keeper mints only when
gold is dear, and mints only as much as the market can absorb, so new gold is
scarce and arrives in bursts. If new gold were the only gold, the dungeon would
fall quiet exactly when the world most needs people walking around in it. Drawing
on the Hoard means the chests are there whatever the price is doing, without
adding a single coin to supply.

Each epoch the world picks **fourteen zones**, drawn by weight without
replacement, with **at least one shallow zone** always among them so a new player
with no torches bound still has somewhere to go. The chip at the top of the
screen names them; the map marks them.

Within a zone the gold is cut into chests, and how it is cut depends on how deep
the zone is:

| depth | chest sizes |
|---|---|
| surface | 85 % hold 1–3 GOLD · 15 % hold 5 |
| second floors | 60 % hold 2–3 · 30 % hold 5 · 10 % hold 10 |
| third floors | 40 % hold 3 · 35 % hold 5 · 20 % hold 10 · 5 % hold 25 |

A zone takes at most **60 chests** in one epoch. Gold the world could not place —
because the zones filled, or something went wrong — is carried forward and placed
at the next scatter rather than lost or re-minted.

So the same gold produces a different world depending on how deep people are
willing to go. The surface is safe and thin. The third floors hold the 25s and
the dark elf wizards guarding them.

## Found is not the same as kept

A chest opened puts gold in your **hands**, not your wallet. Carried gold is a
liability:

- **Die and you drop it.** Your body lies where you fell, with the gold on it.
  Anyone can take it, including you, if you get back.
- **While the world is Dark, skeletons bite.** Every hit takes **5 % of what you
  are carrying**, minimum 1 GOLD, and it goes to the Hoard.
- **After four epochs** — one day — an unclaimed body crumbles, and its gold goes
  to the Hoard.

The only way to make gold yours is to walk it to a **vault**. Every zone keeps
one, usually near the way in, so the tax is not the walk home — it is the walk
back through whatever you came past to get here.

Banked gold is an ordinary token in your wallet. Nobody can take it, and the
world has no claim on it.

## What the world does not keep, the Hoard keeps

Three of the four things that fill the Hoard are simply the world's failures:

```
chest left unopened for 4 epochs   →  Hoard
body left unreclaimed for 4 epochs →  Hoard
skeleton bite during a Dark epoch  →  Hoard
```

The Keeper sweeps these at the start of every turn: it asks the world what
decayed, moves that much of its float across, and clears the tally.

This is the whole thesis in one paragraph. In an ordinary seigniorage token, the
reserve that backs the bonds is filled only when someone chooses to fill it — and
when the price is falling, nobody chooses to. Here it fills fastest exactly when
the world is most dangerous and people are most careless. Gold that is not
secured does not vanish; it becomes the promise made to whoever buys the
recovery.

And what the Hoard keeps, it gives back. The same reserve that stands behind the
bonds also stocks the chests, every epoch, out of whatever is left above what it
already owes. Gold that leaks out of the world is not gone from the world:

```
Hoard  →  next epoch's chests  →  found and banked, or decayed back to the Hoard
```

A hard limit on how much may leave the Hoard in any one epoch means it can be
drawn down but never emptied — it approaches zero without ever arriving there,
and the world's ordinary carelessness keeps refilling it.

## The places the economy lives

| place | where | what it does |
|---|---|---|
| **The vaults** | one in every zone, the plaza's included | Where carried gold becomes banked gold |
| **The Obelisk** | Luméira plaza | Shows the Keeper's mood and counts down to the next turn |
| **Old Bessany's Store** | Luméira town | Food, eggs, an iron dagger, repairs — and a burn |
| **The Masonry** | Lanternfall | Bind and unbind TORCH for health and the deep doors |
| **The Crypt** | Hallowmere, down the Procession Way | Bury gold for tombstones; dig them up again |
| **Brannock's plots** | Hallowmere | Plant a liquidity position and grow TORCH |
| **Cauldrons and the Bonewright** | town, Lanternfall | Crafting: dust to potions, hide to cloaks, wisp-light to lanterns |
| **The Keeper's Board** | Luméira town | Errands, sponsors' notices |
| **The deep floors** | Belfry, Wyrm's Hollow, Glowing Hollow, Old Ovens | The biggest chests, and what guards them |

### The Store, and the burn

The Store sells food, eggs and equipment at prices the operator can tune. At the
time of writing they run from hardtack at 0.15 GOLD through salt cod at 0.33 and
egg bagg at 1.40, an iron dagger at 12.50, up to a sword at 10,000 for anyone who
has banked that much. Repairs cost gold and materials — 1.25 GOLD and five dust
for a dagger, 120 GOLD and a dragon scale to re-forge a sword.

The important part is not the prices, which will move. It is that **every second
purchase burns half its price**. Spending in the Store is a permanent sink on
supply, which pushes in the same direction as the peg. The gold the Keeper mints
in a Bright epoch is partly destroyed by the people who spend it.

### The Masonry

TORCH bound at the Masonry does two things:

```
maximum health  =  1000 + 10 × min(bound TORCH, 200)
```

and it opens doors: **10** bound for the Drowned Chapel, **50** for the Bone
Halls, **200** for the Deep Vault. Past 200 bound torches, more still count for
doors but add no more health.

Binding is not spending — the TORCH is still yours. But **unbinding takes six
epochs**, a day and a half, and during that time you have neither the health nor
the doors. Torches must be bound before you need them, not when.

### Brannock's plots

Brannock's plots are the in-world face of the Graveyard, described in
[architecture.md](architecture.md). A player hands over a full-range liquidity
position in one of the pools and it grows TORCH for as long as it stays planted.
Uprooting returns the position. This is the only place TORCH is emitted, and the
emission schedule is fixed and finite — see [tokens.md](tokens.md).

## Reading the day

Four epochs make a day, and they are not interchangeable. What is worth doing at
any hour depends entirely on what the price did:

- **Bright.** The Keeper is minting, so the new gold goes out on top of the
  Hoard's and the chests are the fattest they get. Go and find them, bank what
  you carry, dig up tombstones if you hold any.
- **Quiet.** Nothing is minted, but the Hoard still stocks the floors, and
  everything from earlier epochs is still lying there on a four-epoch clock.
  Nothing bites, so it is the cheapest hunting of the four. Sweep. Craft. Bind
  torches. Plant.
- **Dark.** Chests still fall, but carrying is expensive. Bank early, stay
  shallow, and consider burying gold at the Crypt — you are buying the recovery,
  and the people being bitten in the deep are the ones paying for it.

The [field guide](field-guide.md) is the short version of that, and the same text
players see in-game.

## Planned

Some of the world's design is not live yet, and is described here only so the
shape is clear. Nothing in this section should be relied on.

- **The Graveyard** — the plots are built but not yet emitting.
- **Parties and player-versus-player**, in any form.
- **Item drops from monsters**, trade between players, and the curio and activity
  systems sketched in the design notes.

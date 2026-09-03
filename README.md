<div align="center">

<img src="docs/img/party.svg" alt="Six adventurers of Delulu Canyon" width="580">

# Delulu Canyon

### *An algorithmic peg whose seigniorage is delivered as loot,*<br>*and whose reserve is fed by the world's losses.*

<br>

# **[delulu.game](https://delulu.game)**

**Sign in with Internet Identity and you are in.** No download, no wallet to fund,
no seed phrase. The game *is* a canister — [coqqu-zaaaa-aaaai-q32ma-cai.icp0.io](https://coqqu-zaaaa-aaaai-q32ma-cai.icp0.io)
is the same door.

<br>

**[Player's Guide](docs/guides/how-to-play.md)** · **[Quests](docs/guides/quests.md)** · **[Field Guide](docs/guides/field-guide.md)** · **[Activities](docs/guides/activities.md)**

**[Changelog](CHANGELOG.md)** · **[Audit log](docs/audit-1.md)**

`build 0.23.0` · `three worlds` · `on-chain, end to end`

<br>

---

### What is down there

<img src="docs/img/foes.svg" alt="A dragon, the Void Octopus, and a skeleton" width="380">

*A dragon, the Void Octopus, and one of the many skeletons.*

---

### Dragon Paladin Wizard Armor

<img src="docs/img/paladins.svg" alt="The four Dragon Paladin houses" width="480">

*Emberguard, Ironscale, the Gilded Wyrm, Nightwyrm — the Dragon Paladin houses,
earned at the Dragon Temple and worn by nobody who has not.*

---

</div>

## The short version

**Find gold. Carry it home. Try not to die on the way.**

Every six hours a canister called the Keeper reads the price of GOLD and decides
what the world becomes for the next six. When gold is expensive it **scatters new
gold as chests across the map** — not paid to stakers, *hidden*, so somebody has
to walk into the dark and carry it back. When gold is cheap the world turns
**Dark**, the chests stop, and the Crypt opens to buy gold back and burn it.

Everything you lose down there — a chest you never found, a body you never walked
back to, gold bitten off you in the dark — becomes the reserve that defends the
peg. **The patient are paid by the careless.**

## The long version

Delulu Canyon is an isometric MMORPG on the Internet Computer whose economy is a
Tomb Finance–style three-token peg — and **three worlds**: the canyon of
Luméira, the isles of Waterworld and the dark of the Solar System, each its own
canister, with gates between them that a whole character can step through,
carrying everything they own. GOLD is meant to be worth one ICP. Every six
hours the Keeper — a canister that does nothing but watch the price and decide —
reads the time-weighted price of GOLD against ICP. When GOLD trades above the
peg the Keeper mints more of it; but instead of paying that new gold to stakers,
it **scatters it as chests across a persistent world**. Players have to find a
chest, carry the gold through whatever lies between them and safety, and bank it
at a vault before any of it is theirs. When GOLD trades below the peg nothing is
minted at all: the world turns Dark, and the Crypt opens to sell bonds for gold
that is burned.

How much the Keeper mints is bounded by **what the market can actually absorb**,
not just by how much GOLD exists. A mint large enough to push the price further
from the peg is not a defence of the peg, so the Keeper will not make one: when
the market is thin it creates little, and when the market is deep it can create
more.

The second idea is the **Hoard**. In Tomb, the bond reserve was fed by one thing
— a slice of each expansion — so the contraction side of the machine depended on
belief, and every notable fork died when belief ran out. Here the reserve is also
fed *involuntarily*: chests nobody found before they crumbled, bodies nobody
walked back to reclaim, gold bitten off the careless while the world is Dark.
Every loss the world produces becomes backing for the bonds. Neglect in the
dungeon funds the defence of the peg, and the patient are paid by the careless.

The Hoard also stocks the floors. Gold chests appear in **every** mood, not only
when the Keeper is minting — funded by that same recovered gold, so the world's
losses come back out as the world's rewards and nothing new has to be created to
keep the dungeon worth walking into.

```mermaid
flowchart LR
    B["People buying and selling GOLD"] -->|"price"| P[("The GOLD/ICP pool")]
    P -->|"time-weighted price, every six hours"| K{{"The Keeper"}}
    K -->|"above the ceiling: mint, bounded by what the market can absorb"| C["Chests hidden in the world"]
    C -->|"find · carry · bank"| W["Player wallets"]
    W -->|"sell or buy"| P
    C -->|"unfound, unreclaimed, bitten"| H[("The Hoard")]
    H -->|"stocks chests in every mood"| C
    K -->|"below the peg: mint nothing, open the Crypt"| X["The Crypt"]
    W -->|"bury GOLD, burning it"| X
    X -->|"a tombstone for each gold"| W
    H -->|"dig up once the price recovers, with a premium"| W
    W -->|"bind TORCH"| M["The Masonry — health and the deep doors"]
```

## The documents

### For players — [docs/guides/](docs/guides/)

| | |
|---|---|
| [How to play](docs/guides/how-to-play.md) | The whole game from the first ten minutes: moods, health, torches, the Crypt, crates, eggs and the Store |
| [Quests and things to do](docs/guides/quests.md) | The quest chains, the board, crafting, pets, curios, the shops and the pub |
| [Field guide](docs/guides/field-guide.md) | Where to go and what is worth doing in each of the Keeper's moods |
| [Activities](docs/guides/activities.md) | Curios, the Collector, NPC trade, fishing, the ferry, the inn and the Ossuary |

### The architecture — [docs/architecture/](docs/architecture/)

| | |
|---|---|
| [Architecture](docs/architecture/architecture.md) | The canisters, what each is responsible for, and why the machine is split this way |
| [The canisters](docs/architecture/canisters.md) | Every mainnet canister by role and on-chain id — the addresses that are the game |
| [The Keeper](docs/architecture/the-keeper.md) | The algorithm in full — sampling, the three moods, expansion, contraction, the bond, the fail-safes |
| [The world](docs/architecture/the-world.md) | How the algorithm lands in the game: chests, carrying, death, decay, and the places the economy lives |
| [Tokens](docs/architecture/tokens.md) | GOLD, TORCH and TOMBSTONE — what each is for, how each is made and destroyed |

### The technical record — [docs/technical/](docs/technical/)

| | |
|---|---|
| [How the peg drives the game](docs/technical/how-the-peg-drives-the-game.md) | The monetary machine and the minute-to-minute play, drawn out: the moods, where a mint goes, and what fills the Hoard |
| [Lineage](docs/technical/lineage.md) | Where this economy comes from, where that family of designs breaks, and what we do differently |
| [Capacity and cycles](docs/technical/capacity-and-cycles.md) | How many people can play at once, what actually limits it, and what it costs to run a game where the canister pays for every message |

### The record

| | |
|---|---|
| [Changelog](CHANGELOG.md) | What changed, release by release, for people who play |
| [Audit log](docs/audit-1.md) | What our internal audits found before opening to strangers, what has been fixed, and what is still open |

The files in [src/](src/) name each canister's job; the implementation lives in
a private repository until launch, for the reasons the audit log gives.

## Where this came from, and who built it

Delulu Canyon began as a fork of **[Sneed MUD](https://github.com/Snassy-icp/sneed_mud)**
by [Snassy-icp](https://github.com/Snassy-icp) — an on-chain MUD engine for the
Internet Computer, and the foundation the rooms, the movement grid, the item
model and the chat rings were built on. The economy, the isometric client, the
three-token peg and the multi-world crossing are ours; the engine underneath
them is not, and the debt is worth naming rather than absorbing quietly.

### Contributors

| | |
|---|---|
| [Snassy-icp](https://github.com/Snassy-icp) | Sneed MUD, the engine this is forked from |
| [XanderBrendon](https://github.com/XanderBrendon) | Fractional gold: the move to eight-decimal GOLD across the Keeper, the world and the client — the reason a chest can be worth a fiftieth of a coin instead of a whole one |
| [Smugandcomfy](https://github.com/Smugandcomfy) | The canyon |

Fractional gold in particular is load-bearing: every chest size, bounty and price
in the world is quoted in e8s because of that work, and the peg's arithmetic
would not survive whole-number coins.

## What this is not

The three tokens are game tokens. They are created and destroyed by published
rules running on canisters, and nothing about them is a promise of value. The peg
is a mechanism, not a guarantee: it is an algorithm that adjusts supply, and it
can and will fail to hold at times. Nothing here is an offer, an investment, or
advice.

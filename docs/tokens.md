# The three tokens

Delulu Canyon runs on three tokens. They are ordinary ICRC ledgers — eight
decimals, ICRC-1, ICRC-2 and ICRC-3 — and a player's balance is held by their own
Internet Identity principal, not by the game. The game can ask you to send it
gold; it cannot reach into your wallet.

| | GOLD | TORCH | TOMBSTONE |
|---|---|---|---|
| **role** | the money | the share | the bond |
| **supply** | elastic, set by the Keeper | fixed at 70,000 | equals gold buried, minus gold redeemed |
| **created by** | the Keeper, in expansion epochs | nothing — minted once | burying GOLD at the Crypt |
| **destroyed by** | burying it, and the Store's burn | nothing | digging it up again |
| **what it does** | buys things; the thing the peg is about | health, deep doors, governance weight | a claim on the Hoard |

## GOLD

GOLD is the money, and the peg is about GOLD: **one GOLD is meant to be worth one
ICP**. Nothing enforces that directly. What enforces it is the Keeper's response
to the price — mint when gold is dear, offer bonds when it is cheap — described in
full in [the-keeper.md](the-keeper.md).

GOLD is created in exactly one place: the Keeper, at an epoch boundary, when the
time-weighted price is above the ceiling, capped at 2 % of supply. Nothing else in
the system can mint it. The dungeon can ask the Keeper to pay out gold it is
already holding, but it cannot create any.

GOLD is destroyed in two places: burying it at the Crypt, which burns it outright,
and the Store, where every second purchase burns half its price.

Because it is a plain ICRC ledger, banked GOLD behaves like any other token on the
network — transferable, tradeable, and holdable by anyone, in or out of the game.

## TORCH

TORCH is the share token, and its supply is **fixed at 70,000 forever**. It was
minted once and cannot be minted again. The allocation:

| | TORCH | for |
|---|---|---|
| the Graveyard | 49,000 | emission to liquidity providers |
| the DAO | 7,000 | governance treasury |
| development | 7,000 | building the thing |
| events | 7,000 | prizes, sponsorships, and giveaways |

The Graveyard's 49,000 is the only ongoing emission, and it is finite: it is paid
out over **730 days** — two years — split across two farms in a 70/30 ratio. A
claim vests over seven days, and a balance below 0.01 TORCH is too small to claim.
Positions can be uprooted at any time. When the 730 days are done, no more TORCH
is emitted, ever.

TORCH is not a claim on revenue. What it does is:

- **bound at the Masonry**, it raises maximum health — ten points per torch, up to
  two hundred torches — and opens the deep doors at ten, fifty and two hundred;
- **held**, it is the governance weight in the DAO that controls the treasury and
  the parameters the operator can tune.

Unbinding takes six epochs, so bound TORCH is genuinely committed rather than
flickered in and out.

## TOMBSTONE

TOMBSTONE is the bond. It has no fixed supply; it exists only as the record of
gold burned during a contraction, and it is destroyed when that gold is paid back.

The mechanism, in one line each:

- **Bury** GOLD at the Crypt while the world is Dark. The gold is burned. You get
  one TOMBSTONE per GOLD. At most 3 % of supply can be buried in one epoch, and
  outstanding tombstones cannot exceed 35 % of supply.
- **Dig up** while the world is Bright. The tombstones are burned and the Hoard
  pays you GOLD — one for one, plus a premium of 70 % of the excess when gold is
  trading above 1.10.

A tombstone is a claim on the Hoard and nothing else. If the Hoard cannot cover a
redemption, the redemption is refused; it does not mint new gold to cover itself.
That constraint is why what fills the Hoard — the unfound chests, the unreclaimed
bodies, the bites — is the load-bearing part of the design rather than a flourish.

## What these are not

They are game tokens. They are not shares, deposits, or claims on any company or
its revenue, and no one is obliged to buy them from you.

The peg is a mechanism, not a promise. It is a rule about what a canister does
when it reads a price, and its ability to hold anything depends on there being
people who want gold. It has failed elsewhere and it can fail here. The rules are
published so you can judge that for yourself, not so you will assume someone else
has.

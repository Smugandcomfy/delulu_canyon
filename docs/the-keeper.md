# The Keeper

The Keeper is the treasury and the clock. It is the only thing in Delulu Canyon
that can create GOLD, and it does so on a fixed schedule according to one
published rule. This document is that rule in full.

## The epoch

The Keeper turns every **six hours** — four times a day. Everything it does
happens at that boundary; between boundaries it only watches the price.

While an epoch runs, the Keeper samples the price of GOLD in ICP from the
GOLD/ICP pool **once every five minutes**, so a full epoch collects up to
**72 samples**. It reads how deep the pool is at the same moment, and remembers
the shallowest depth it saw all turn.

Samples are filtered rather than trusted:

- A sample is discarded if it sits too far from the running median of the
  epoch's samples so far. One strange print does not move the number.
- But a *run* of readings, all landing on the same side of the band, is not a
  strange print — it is the market having moved. When that happens the Keeper
  re-anchors: it lets go of the stale readings and begins the epoch's median
  again from the price the market is actually trading at. This is new. Before
  it, a market that ran hard inside a single turn could leave the Keeper reading
  a price that had stopped existing, for the rest of that turn — which meant a
  crash was noticed but a recovery could be refused sample after sample until
  the next boundary.
- A failed read is skipped, not counted as zero.

At the boundary the epoch's price — the TWAP — is the **median** of the samples
that survived the filter. The Keeper also records how many samples that median
was taken over and how many minutes they spanned, so that anyone reading the
number afterwards can tell whether it covered six hours or six minutes.

## The three moods

The TWAP decides which of three things happens, and the world is told which so
the Obelisk and the sky can show it:

| TWAP | mood | what happens |
|---|---|---|
| above **1.01** | **Bright** — expansion | new GOLD is minted, and joins the chests |
| between 1.00 and 1.01 | **Quiet** — stable | nothing is minted, nothing is sold |
| below **1.00** | **Dark** — contraction | nothing is minted; the Crypt opens and sells bonds |

Chests are scattered at **every** boundary, in all three moods. Only the *new*
gold is mood-dependent; the rest comes from the Hoard, and both are below.

## The fail-safes

Before any of that, three conditions can make an epoch do nothing at all. Each
one forces **Quiet**: no mint, no Crypt.

1. **The total supply of GOLD could not be read.** The Keeper will not act on a
   number it does not have.
2. **Too few samples survived the filter.** The bar here is far higher than it
   used to be: the Keeper now wants a substantial share of everything a healthy
   epoch should have collected before it will act on the price at all. A feed
   that is broken, sparse, or only just switched on cannot be used to mint, and
   it cannot be used to open the bond market either. A quarter of an hour of
   readings is no longer an opinion worth minting on.
3. **The pool is too thin.** If liquidity in the pool falls below a configured
   floor, the price it reports is too cheap to move to be trusted, and the epoch
   is treated as stable.

The third is the important one. A seigniorage peg reads its own market, and a
market thin enough to push is a market that can be used to make the Keeper mint.
The floor means that draining the pool does not unlock the mint — it disables it.

## Expansion

When the TWAP is above the ceiling, the Keeper mints. How much is the smaller of
two entirely different ceilings — one drawn from the token, one drawn from the
market — and whichever is lower is the one that binds.

The first is the **supply rule**. It is the smallest of three numbers: how far
above the peg the price actually is, a tier that shrinks as the token grows, and
a hard cap.

```
tier(supply)  =  4.5 %   if supply <   500,000
                 4 %     if supply < 1,000,000
                 3.5 %   if supply < 1,500,000
                 3 %     if supply < 2,000,000
                 2.5 %   if supply < 5,000,000
                 2 %     if supply < 10,000,000
                 1.5 %   if supply < 20,000,000
                 1.25 %  if supply < 50,000,000
                 1 %     otherwise

rate         =  min( TWAP − 1 ,  tier(supply) ,  2 % )
supply rule  =  supply × rate
```

The **2 % cap** binds long before the tiers do at any realistic supply. It is
what limits the damage a determined buyer can do: however far someone pushes the
price in one epoch, the Keeper will not create more than one fiftieth of the
supply in response, and it will not do so again for six hours.

The second is the **market rule**, and it is the one that will almost always
bind. An expansion mint exists to walk the price back down to the peg by selling
new gold into the market. The honest size of that mint, then, is however much
the market can absorb before the price is back at the peg — and not one coin
more. That quantity is nothing to do with how many GOLD exist. It follows from
how deep the trading pool is and how far above the peg the price has gone:

```
absorbable   =  pool depth × ( 1 − 1 / √TWAP )
market rule  =  absorbable × the walk-down share

minted       =  min( supply rule ,  market rule )
```

Three things follow from taking the smaller of the two.

**It can only ever mint less.** On any input at all, the pair of rules mints no
more than the supply rule did alone. A depth reading that is too generous simply
degrades to the old behaviour; a reading that is too small, or missing
altogether, mints nothing. Both directions are bounded, and on something holding
real value a bounded mint is the only kind worth having.

**The depth it trusts is the shallowest it saw.** Not the reading taken just
before the boundary, but the least depth measured anywhere in the epoch — depth
that was durably there for the whole turn, rather than depth that happened to be
there for a moment.

**It walks rather than jumps.** Only a share of the absorbable amount is minted
in any one turn — currently about half — so an expansion closes part of the
distance to the peg and leaves the rest to the turns after it. It is a damper,
not a budget: it means an epoch that read the price a little high does not
overshoot, because it was never aiming to arrive in one step.

This is the most consequential rule in the document, and it is new. The supply
rule on its own took no account whatsoever of the market it was selling into: at
recent numbers it wanted around 660 GOLD in a turn where the pool could absorb
about 16. Forty times too much, every ordinary epoch, is not a rounding error —
it is why GOLD traded below its peg, and correcting it is the point of the whole
change. The 2 % cap stays as a backstop for the extreme case, but at any real
depth it is the market rule that decides.

The minted gold is then divided:

```
tithe        =  minted × 5 %      to the DAO
             +  minted × 5 %      to development

debt         =  tombstones outstanding × premium(TWAP)

toHoard      =  0                                     if the Hoard already covers the debt
                min( (minted − tithe) × 65 % ,  debt − Hoard )   otherwise

chest gold   =  minted − tithe − toHoard
```

The 65 % is the other side of a floor: **at least 35 % of every mint reaches the
world as chests**, no matter how much debt is outstanding. The Hoard can be
topped up aggressively, but it can never take the whole expansion and leave the
players with nothing to find.

Chest gold that the world cannot place — a zone full, a call that failed — is
carried to the next expansion rather than minted again.

## Contraction, and the bond

When the TWAP is below the peg, nothing is minted. Instead the **Crypt** opens.

A player brings GOLD to the Crypt and buries it. The gold is **burned** — it
leaves the supply permanently — and they receive **one TOMBSTONE for each GOLD**,
one for one. Two limits apply:

- at most **3 % of supply** may be buried in any one epoch, and
- total tombstones outstanding may not exceed **35 % of supply**.

Tombstones are redeemed the other way round: only while the world is **Bright**,
a holder digs them up. The tombstones are burned and the Hoard pays out GOLD:

```
premium(TWAP)  =  1                              if TWAP < 1.10
                  1 + (TWAP − 1) × 70 %          if TWAP ≥ 1.10

payout         =  tombstones × premium(TWAP)
```

So a bond always returns at least the gold that bought it, and returns more when
gold is dear — 1.105× at a price of 1.15, 1.14× at 1.20. Redemption is paid from
the Hoard and is refused if the Hoard cannot cover it, which is why what fills
the Hoard matters as much as the rule that empties it.

This is one deliberate departure from Tomb, which sold its bonds at a discount to
the depressed price. Here the bond is sold at par and the whole incentive lives in
the premium and in the reserve behind it.

## The Hoard

The Hoard is the reserve that pays redeeming bondholders. Four things fill it:

1. a slice of each expansion, while tombstones are outstanding;
2. **chests nobody found** — a chest left lying for four epochs crumbles, and its
   gold goes to the Hoard;
3. **bodies nobody reclaimed** — gold dropped on death sits with the body for
   four epochs and then goes the same way;
4. **bites** — while the world is Dark, skeletons take a share of the gold a
   player is carrying, and that goes to the Hoard too.

The last three are the design's central claim. They are *involuntary*: they do
not require anyone to believe the peg will recover, or to choose to support it.
A world where players are careless is a world with a well-funded bond reserve.
The patient are paid by the careless.

The Keeper collects them at the start of each turn: it asks the world what
decayed since last time, moves that much of its float into the Hoard, and tells
the world the debt is settled.

## A worked example

Take a supply of **25,000 GOLD**, no bonds outstanding, and an epoch whose TWAP
came out at **1.0229**.

```
tier        = 4.5 %                        (supply is under 500,000)
rate        = min(0.0229, 0.045, 0.02)     = 2 %      ← the cap binds
minted      = 25,000 × 2 %                 = 500 GOLD
tithe       = 25 to the DAO + 25 to development
toHoard     = 0                            (no bonds outstanding)
chest gold  = 500 − 50                     = 450 GOLD
```

450 GOLD is scattered as chests. Four such epochs a day is roughly 1,800 GOLD
entering the world daily, if the price stays above the ceiling every turn — which
it will not.

Now the same supply and a price of **1.15**, with **10,000 tombstones**
outstanding and an empty Hoard:

```
premium     = 1 + (1.15 − 1) × 70 %        = 1.105
debt        = 10,000 × 1.105               = 11,050 GOLD
rate        = min(0.15, 0.045, 0.02)       = 2 %
minted      = 500 GOLD
tithe       = 50 GOLD
toHoard     = min((500 − 50) × 65 %, 11,050)  = 292.50 GOLD
chest gold  = 500 − 50 − 292.50            = 157.50 GOLD
```

The debt is enormous relative to one epoch's mint, so the Hoard takes its full
65 % share — and the players still get 157.50, because of the 35 % floor.

And at a price of **0.95**, the same supply:

```
minted             = 0
Crypt capacity     = 25,000 × 3 %          = 750 GOLD this epoch
debt ceiling       = 25,000 × 35 %         = 8,750 tombstones outstanding
```

Nothing is created. Up to 750 GOLD can be burned into tombstones before the epoch
turns again.

## What the Keeper cannot do

- It cannot mint outside an expansion epoch, and cannot exceed the cap within one.
- It cannot open the Crypt while the price is at or above the peg, and cannot
  redeem a bond while it is below.
- It cannot pay a redemption the Hoard cannot cover.
- It cannot act at all on a price it could not read enough times to trust.

Everything above happens on a canister, on a schedule, in public. The supply, the
Hoard, the outstanding bonds and the price the Keeper acted on are all readable
by anyone who wants to check the arithmetic.

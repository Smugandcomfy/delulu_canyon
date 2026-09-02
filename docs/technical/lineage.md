# Where this comes from, and what we changed

Delulu Canyon's economy is a **seigniorage peg** — the family of designs Tomb Finance made
well known on Fantom. We think the idea is a good one and we have kept its shape. We also
think the honest thing to say up front is that **this family of designs has a poor record,
Tomb's own included**, and that a project which explains the mechanism without explaining
the failure mode is selling rather than describing.

So: what the pattern is, where it breaks, and what we do differently.

## The pattern

Three tokens and a clock.

- A **stable-ish token** that is meant to track something — here GOLD, aiming at 1 ICP.
- A **share token** that captures the upside when the peg holds — here TORCH.
- A **bond** that soaks up supply when the peg breaks — here TOMBSTONE.

Every epoch the protocol reads the market price of the stable token. **Above the peg** it
mints new supply, because demand exceeds supply and the mint pushes the price back down.
**Below the peg** it mints nothing and instead sells bonds: you burn the stable token now
for a claim that pays out later, when the price recovers.

That is the whole idea. It is elegant, and its weakness is in plain sight: **it depends on
someone wanting the shares.** Expansion is only attractive while people believe there will
be more expansion.

## Where it breaks

Four failures, and they compound.

**The reflexive one.** Newly minted supply usually goes to whoever holds the share token.
That is a yield, and a yield attracts capital that is there *for the yield*, not for the
thing. When expansion slows, that capital leaves, the price falls, expansion stops
entirely, and the reason to hold the share disappears exactly when it is most needed.

**The bond one.** Bonds are a promise to pay out of future expansion. If the peg does not
recover, the promise is never kept. Worse, bonds sold at a discount create *more* claims
than the supply they removed, so a protocol can dig itself deeper while appearing to
defend itself.

**The oracle one.** The whole policy is driven by one number: the price. If that number
comes from a pool thin enough to move, then whoever moves it decides how much gets minted.

**The depth one.** This is the quiet one, and it is the one that does the most damage. The mint
exists to walk the price back down to the peg — and it is almost always sized as a share of
*total supply*, a percentage of every token that exists. Nothing in that number is a property of
the market. A pool that could absorb a few tokens without flinching gets handed hundreds, and the
mint sent to defend the peg becomes the thing that breaks it. It happens on a quiet day, to a
project doing everything else right, and it happens again every epoch, so the gap compounds.
Worse, because the rule never looks at the pool at all, no amount of liquidity growth ever makes
it safe.

## What we changed

### Minted supply is scattered, not paid out

This is the important one, and it is why the game exists rather than being a UI on a
protocol.

When the Keeper mints, the gold does not arrive in anyone's wallet. It is **hidden as
chests across the world**, and it becomes yours only when you walk to it, pick it up, and
carry it back to the vault without dying. Gold you are carrying is not yours yet. Chests
nobody finds decay back to the reserve.

That changes what the share token is for. Holding TORCH does not pay you an expansion
yield; it raises your health and opens the deep floors, which is where the larger chests
are. **The reward for believing in the system is a better chance at the work, not a claim
on other people's entries.** The reflexive loop above needs a yield to reflex on, and there
isn't one.

It also means supply enters circulation at the rate people can be bothered to earn it,
which is a far slower and more honest number than the rate a contract can print at.

### The oracle is filtered, capped, and can refuse

- The price is sampled every **5 minutes** across a **6-hour** epoch, and a sample is
  discarded if it sits more than **25 %** away from the running median of that epoch. One
  printed trade cannot move policy.
- Expansion is `min(price − peg, tier, cap)`. The **tier** steps down as supply grows
  (4.5 % per epoch at the smallest supply, 1 % once supply is large), so the system slows
  itself down as it gets bigger.
- Above that sits a **hard cap** on how much may be minted in one epoch regardless of what
  the price says.
- If the pool's liquidity falls below a configured floor, the Keeper **does nothing at
  all** that epoch. A drained pool is not a buy signal.

The Keeper only acts above **1.01**, not 1.00, so noise around the peg produces no supply.

### Bonds are 1:1, not discounted

Tomb sold bonds at the price — below the peg you got more bonds than the gold you burned.
That is a stronger incentive to buy them, and it is also how a protocol ends up owing more
than it removed.

Here, burying gold gives **exactly one TOMBSTONE per GOLD**. The only upside is the
**redemption premium**, which pays out above 1.10 at 70 % of the excess — a reward for
having been early, not a leveraged claim. Total bonds are capped at **35 % of supply**, and
the Crypt will only take **3 % of supply per epoch**, so the debt cannot run away in a
single bad day.

### Something always reaches the world

When there is debt outstanding, expansion goes to repaying it — but never all of it. **At
least 35 % of every mint is scattered as chests regardless**, so the world does not go
empty while the books are being balanced. A game where the reason to play stops during a
downturn has no players left for the recovery.

### The tithes are small and visible

Every expansion pays **5 % to the DAO** and **5 % to development**. Both are on-chain
accounts anyone can read, both are taken on the amount minted, and neither is a claim on
anything else.

## What we have not solved

We should be equally clear about this.

**A peg is only as good as the depth behind it.** Our filters bound how fast a manipulated
price can turn into supply; they do not make a thin pool safe. Pool depth is the real
defence, and it is a funding problem rather than a code one.

**A sustained loss of interest still breaks it.** If nobody wants GOLD, nothing above keeps
the peg. What the design buys is that the failure is *slow and visible* rather than
sudden — capped expansion, bounded debt, and a reserve that is a number anyone can read —
not that it cannot happen.

**None of this is investment advice, and GOLD is not a stablecoin.** It is a game currency
with a peg mechanism and a published set of rules. The rules are in
[The Keeper](../architecture/the-keeper.md); the code they come from is the same code the canisters run.

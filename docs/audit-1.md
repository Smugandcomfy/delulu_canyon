# Audit 1 — hardening log

Before opening the world to strangers we put the whole codebase through an internal audit:
several independent read-only passes over the canisters and the client, each looking at a
different dimension — money paths, authorisation, cost under load, dead code, and the seams
between the backend and the browser.

It produced **78 findings**. This page is the public record of what has been done about them.

## Where it stands

| | |
|---|---|
| Findings raised | 78 |
| Closed at the time of writing | **25** |
| Fixed | 22 |
| Investigated and dismissed | 2 |
| Already resolved before the audit | 1 |

Those counts are the audit's own tally and are left as they were written. What has
happened since is in the batch table below, which is kept current — three of the
five areas the audit left open have closed, and the work that came after it from
player reports is listed on the same terms. Current build: **0.26.0**.
(A fifth pass ran on 5–6 September; its own section is below.)

Two findings are worth calling out for being *wrong*. Both were investigated properly and both
turned out to describe a bug that does not exist — one in the movement code, one in the client's
configuration handling. In each case we wrote a test that pins the correct behaviour against the
unchanged code, so nobody "fixes" them later. **An audit finding is a hypothesis, not a verdict.**

## Batches

Work is grouped into batches rather than done finding by finding. Several findings usually turn
out to be one underlying thing, and fixing them together produces one change to one idea instead
of three passes over it — twice now, a batch closed a fourth problem nobody had reported.

Commit hashes are from the private implementation repository, listed so this log can be checked
against it.

| Batch | Status | Commit |
|---|---|---|
| Release and tooling safety — build guards, an operations runbook, a repaired local test harness | **Closed** | `35c9574`, `960ee97` |
| Authorisation review — who may call what, across every canister | **Closed** | `1e3fdc6` |
| Scheduler resilience — the economy's clock now survives a failed cycle | **Closed** | `514d8c2` |
| Exchange safety — a trade that cannot complete refuses before anything moves | **Closed** | `4d466a6` |
| Client responsiveness — portal travel, and how world objects are drawn | **Closed** | `d6c8596` |
| Navigation and session — fog of war across portals, and the trade window | **Closed** | `06eeed2` |
| Identity and naming — who owns a name and when it is released | **Closed** | `6af86cb` |
| Surfacing what already worked — lantern light, dropped chests, bounties, signposts | **Closed** | `f04246d`, `7ed42b9` |
| Reliability and observability — the machine can now report when a part of it stops talking to another | **Closed** | `5bf5e1c` |
| Economy accounting — four ways gold could be counted twice, and a sell path that could promise gold the world did not have | **Closed** | `f6ff141`, `0987e14` |
| Oracle observability — the Floor's drift now raises an alarm when it *grows*, rather than when it is merely large | **Closed** | `46f0718`, `9d00656` |
| Interface drift — client interfaces are now checked against the live canisters rather than against our own assumptions | **Closed** | `cc54599` |
| World geometry migration | **Closed** | — |
| Cost and capacity under load — the per-poll cost is now measured on the live canister rather than estimated; the idle cost of a larger world is still being watched | **Mostly closed** | `b479d25` |
| Dead code and legacy surface — the legacy surface is gone; three unused entry points remain and are queued for deletion | **Mostly closed** | — |

**On the three that were open at the last update.** The world geometry migration
is finished — every zone is on the new sizing and the pending list is empty.
Capacity stopped being a guess: the poll that drives the client was measured on
the live canister across nearly four million queries and came in at a small
fraction of the per-query budget, which retired the concern that it scanned the
whole world. What remains is watching the idle cost as the world grows, which is
a standing measurement rather than an open fault. And the legacy surface has been
removed; what is left is three entry points that answer nothing and are queued to
be deleted outright.

### Since the audit

The log did not stop when the audit did. Player reports and a second read-only pass
have produced their own batches, and they are listed on the same terms.

| Batch | Status | Commit |
|---|---|---|
| Payments are distinguishable — an identical second purchase is a second purchase, not a repeat of the first | **Closed** | `036b37d` |
| Touch input — tapping the world could stop until the page was reloaded, on phones only | **Closed** | `cd203a6` |
| Account recovery — a player can find which sign-in holds their character | **Closed** | `e05e200` |
| Content and world correctness — the weapon ladder priced against itself, a key placed where it could be found, and the several places the world contradicted its own guide | **Closed** | `69f02e0`, `fe1583a`, `d38d1df`, `5f32734` |
| The Ossuary's pub, and the rule that what the shops sell and what the chests give away stay apart | **Closed** | `d8c5fe5` |
| Movement — a square the world refused once stayed refused; and a way back that was never tied to its door | **Closed** | `9fa8482`, `5fb20c6` |
| The Keeper's own payments, and a way to recover a staking position stranded behind a sign-in nobody can use | **Closed** | `86a1253` |
| Sign-in — an unfinished trip to the identity window handed out a second, empty account | **Closed** | `6eaea06` |
| Barter — the trade window discarded the trade as it opened, so no trade could ever be completed | **Closed** | `1173f79` |
| Touch handling extracted from the scene so it can be tested, and the compass moved off the player's name | **Closed** | `058dc01` |
| Sign-in moved to the identity host the network now points at, after checking that principals do not move with it | **Closed** | `411b333` |
| A third read-only pass, over every errand, every person you can talk to, and every refusal the client was discarding — 28 findings, 10 of which could not have succeeded for anybody | **Closed** | `1c5c7a6`, `3913635`, `6211bba` |
| The same pass turned on its own output: six defects found in the fixes themselves before any of them was deployed | **Closed** | `400c8a8`, `6a6e5b9` |
| A traveller now lands whole, or does not land at all — an arrival decided a refusal after it had begun placing the character | **Closed** | `fcdb44b` |
| A journey in progress is the only record consulted before a character may be cleared away; absence used to be read as safe arrival | **Closed** | `c00c4ff` |
| A door that refuses takes nothing — several gates took the toll before finding a later reason to turn the player back | **Closed** | `b483fc0` |
| A crossing that has not settled refuses a trade at the first step rather than the last | **Closed** | `53d15ff` |
| An empty world stops paying to keep its heartbeat, and wakes on the next action | **Closed** | `87a413f` |
| Being worked on can be told apart from being broken, everywhere the player would otherwise see an outage | **Closed** | `f1b8510`, `32f884c`, `bf33c9d`, `a202967` |
| Safety made local and visible — a shop door, a portal, a town, the named truce grounds — replacing the rule that made the whole surface safe | **Closed** | `2fb3f2b` |
| A standing list of trusted testers, with two powers and no others | **Closed** | `270c5f1`, `179a083` |
| A guard that could not read the file it was asked to check, and therefore passed it | **Closed** | `b4baf43` |
| A way to put back what a defect removed, without touching anything else | **Closed** | `1eca166` |
| The world's heartbeat could stop for good and say nothing — now survivable, observable and restartable without a deployment | **Closed** | `0e46e1b` |
| **Fourth pass — an adversarial security review of all six canisters** (see the section below). One access-ordering fix on an owner-only setup call | **Closed** | `ca0a942` |
| From the same review: rate-limit hardenings so a flood of throwaway accounts cannot waste the canisters' fuel — the safe subset done, the rest scoped | **Closed** | `ca0a942` |
| From the same review: two small internal-accounting tidy-ups in recently-added code, found before any player hit them | **Closed** | `ca0a942` |
| Groundwork so the world can be moved or rebuilt without losing a single player record — a complete change-detecting fingerprint of everything kept, and a rule that a freshly rebuilt world cannot start running before its contents are restored | **Closed** | `3617809` |
| Economy accounting, continued — the reserve that pays tombstones back is now set aside before any other spending, under one rule shared by every path that spends from it | **Closed** | `0a608e1` |
| A world created fresh could have mis-counted its starting treasury on its first upgrade — found by a new test, fixed before any fresh world existed, and the test harness strengthened so this class is caught loudly | **Closed** | `b873f6f` |
| User chests — a player's own tokens sealed into crates, built custody-first: the trading canister holds the value, the world holds only a pointer, and every destroying path refunds the maker | **Closed** | `254ab6a`, `b873f6f` |
| Fuel cost under load — five paths that charged the world for work nobody asked for: a per-turn rebuild of an index that only needed the zones with somebody in them, a message queue that had been dead for months and was still being walked, a notification budget counted in events rather than in the sends it would actually make, an unbounded call rate on movement, and a treasury log that copied itself to grow by one | **Closed** | `01dc54c`, `ea6a0ff`, `216a80e` |
| The canisters stop paying to refuse strangers — an unauthorised caller is now turned away before the message is charged rather than after | **Closed** | `ebe408f` |
| Dead code and legacy surface, finished — the combat module nothing called is deleted, and two setup entry points that could never have succeeded are gone from the interface | **Closed** | `216a80e`, `c571db1`, `cf21ef8` |
| A non-destructive hold for automated accounts — an account playing for gold rather than playing can be stopped from gold-bearing activity without being removed and without anything already earned being taken | **Closed** | `3af53ce` |
| A world says what it is, and the client stops guessing — names, gates and destinations are read from the realm rather than compiled into the client, which is what let a world go its whole life named "Default Realm" | **Closed** | `90a02e0`, `93a9f53` |
| Cycles watch — a read-only monitor that reads each canister's own fuel balance and raises an alarm under a floor, rather than the balance being something a person has to remember to look at | **Closed** | `27a9452`, `a56f61f` |
| **The Chamber shipped correct-looking and broken, three times** — a hall with no way in, a doorway its own building painted over, and six clerks every one of which was silently refused. Every endpoint answered correctly for all three; all three were found by walking to the room. The guards that were missing are now in place: the content module had no test at all, and the script its own header named as the thing that would catch its tiles drifting had never read the file | **Closed** | `f5d1321`, `86e61e6` |

### The fifth pass — 5–6 September

Six independent read-only passes over the whole estate at once, along different
dimensions: reachability, security, cost under load, silent failures and stubs,
the seam between the realms and the browser, and what a player actually
experiences. It is the largest single sweep this log records, and — like the
third pass — it was turned on its own output afterwards.

**Read the first row before the others.** Four of the findings were introduced
*by the batch that was being written at the time*, three of them by the same
hand, and one of them inside the fix for another one. That is the finding. The
process, not the bugs.

| Batch | Status | Commit |
|---|---|---|
| **The class, not the bugs** — a mis-spelled field in a record was accepted by the compiler as a *warning* and silently discarded, which gave one item away for nothing and without limit. The compiler knew and nobody was listening; warnings of that shape now fail the build | **Closed** | `614698e` |
| A newly added creature could not be described to the browser, so any area holding one failed to draw at all — an interface written down twice and never compared, which is the shape this log has now recorded four times | **Closed** | `614698e` |
| **Money sent to the wrong address.** A deposit address shown to a player, with a button to copy it, was rendered incorrectly — while the balance check read the *right* one. Money went somewhere it could not be retrieved from and nothing appeared to happen | **Closed** | `ef8ee39` |
| **A monitor that could never raise an alarm.** The health panel asked itself a question it was not on its own list of people allowed to ask, took the refusal for an empty answer, and reported that nothing was wrong — whatever the estate was doing. A check that cannot fail is worse than no check; this log has now said that about three different things | **Closed** | `ef8ee39` |
| **A repeatable prize with no meter on it** — a chest that could be re-opened far more often than intended, and was live. Metered, and the two tables that were supposed to agree about which chests are which now do | **Closed** | `0747b55` |
| A donation baked into a third-party component was switched on by default in the token engines. Turned off deliberately rather than left as a default nobody had chosen | **Closed** | `01b8316` |
| **Three readings in the canister that mints, all of which answered when they should have refused** — one from memory after the source went quiet, one from a stale value, and one that read a missing answer as zero and let it through to a mint. All three now refuse, and refusing is the safe direction in every one | **Closed** | `82b6200` |
| **Availability, in the market's own safety check.** A protective mechanism could stop far more than it was meant to, and could have done so with nobody attacking it. It now confirms what it sees before it acts, and the decision is no longer one an outside caller can ask it to make. No balance was ever at risk | **Closed** | `3a66647` |
| **Crate custody made specific.** Opening a player's sealed crate was authorised on the *kind* of caller rather than on the particular crate. Custody is now recorded when a crate is carried into a world and checked when it is opened, with a handover for when it travels. Crates sealed before the change keep working exactly as they did | **Closed** | `3a66647` |
| A reward that wrote two receipts checked the room for each of them separately, so a player near the limit could take the reward and silently lose half of it, with no way to retry | **Closed** | `93b6f73` |
| **Fourteen decorations, across two releases, that no hand-authored area could use.** A validator had stopped being updated while the world kept adding to it, and every map using one was refused. It was invisible because the automatic path did not go through the validator. The script that should have caught it does now, and was verified by putting the fault back | **Closed** | `93b6f73` |
| **The missing gate — things that exist and nobody can reach.** Four of the six passes independently found the same shape: features built, tested, protected and deployed with no way for a player to get to them. Seventeen of them. That is not a list of oversights, it is an absent check, and the check now exists and runs. Ten are wired up; the rest are named on the open list | **Mostly closed** | `0b1e4f9` |
| A guard suite that stopped at its first complaint, so one expected complaint hid every check behind it — including, for a fortnight, two real ones. It now runs all of them and reports all of them | **Closed** | `0b1e4f9` |
| The token engines stop paying to refuse strangers — ten owner-only calls were charged for before they were checked. No balance was ever at risk; the cost was | **Closed** | `0b1e4f9` |
| Fees left stranded in a pool by one staker could be paid to a later one. Refused rather than reassigned, with an operator path to settle them to whoever is owed | **Closed** | `be0518e` |

**On the second row of that table** — the one about a creature that could not be
described. It is the same fault as the Chamber's, as the signpost's, and as the
lantern's: two things that must agree, written down in two places, with nothing
comparing them. Every time it has appeared the fix has been a comparison, and
every time the comparison has caught something else the week after.

**On those two market rows.** They are named by area and effect only, and more
briefly than the rest, for the reason this page gives at the bottom: **the fixes
are written but not yet deployed**, and this world is live and holds real value.
Neither could move or duplicate anyone's tokens. Neither had happened. Both were
found by reading the code rather than by anybody running into them. They will be
described properly here once the batch ships — the log is a record of what
changed under the world, and "could not be exploited" and "could not go wrong"
are different claims worth keeping apart.

**Still open from this pass**, named by area as always: the remaining unreachable
entry points; a set of cost reductions on the poll that drives the client and on
two per-turn passes over the world; a batch of refusals that name internal
machinery instead of telling a player what to do; and one item that cannot be
fixed from the code at all, because the content it concerns exists only inside a
running canister and not in any file.

## What this pass changed for players

- **The Sneed Lounge, and the guild rooms around it.** Couches you can sit on —
  every couch in the game had been scenery — a portal each way between the lounge
  and the steakhouse, and staff who have opinions.
- **Deep-sea fishing.** Five hundred species, a fight screen with a bar and a
  button, a book that remembers everything you have landed, and five fish of
  which there is exactly one each in the world, first come.
- **Willemsted**, a pastel town on the water, with a quay you can cast from and
  two shops.
- **A fire in every world.** Cold is coming; the fires are lit early and say so.
- **The egg room explains itself** instead of refusing you without saying why.
- **The doors in the steakhouse are spread out and signposted** — they were in a
  heap and unlabelled.
- **Several things that existed and could not be reached** now can: the exotic
  eggs shipped a release ago that nobody could buy, a guild room whose door
  needed a key nobody could obtain, a coop that was drawn and did nothing, and
  the ledger of what you have caught.

**On that last row**, because it is the one worth reading. The three faults had
nothing in common in the code and everything in common in shape: in each case two
things that had to agree were written down twice and never compared, and the
result was a failure that *reported success*. The worst of the three was a guard
written for a rare case — one clerk failing to find a spot — quietly swallowing a
case where every clerk failed. A check that cannot fail is worse than no check,
which this log has now said twice about two different scripts.

## What players will notice

- **Portals work from the action button.** Travelling by pressing the action button the moment
  you arrive on a portal used to leave the button stuck and need a page refresh. Fast travel was
  never affected, which is why it took a while to pin down.
- **Objects on the ground stay put.** Chests and crates near the edge of your sight used to
  appear and disappear as you moved. They also drew *underneath* anyone standing on them, so a
  crate you were stood on was invisible. Both fixed.
- **The Wisp Lantern lights what it promises.** Its extra range was real on the server and
  ignored by the client, so the outer ring of fog never lifted.
- **A dropped chest tells you what it is and who left it** — the design always sent that; the
  client simply never asked for it.
- **A refused dragon bounty can be claimed again** rather than sitting out of reach.
- **Signposts read the words the realm actually holds**, not a copy baked into the client.
- **The trade window closes when you close it.**

## The third pass, and what it says about the method

The audit's own lesson — that a finding is a hypothesis, not a verdict — cut both
ways this time.

A player reported that an errand said it was ready to hand in and then would not
hand in. Rather than fix the one report, we ran a third read-only pass over every
errand, every conversation, and every error the client was quietly discarding. It
found **28 things, 10 of which could not have succeeded for anybody** — and the
reported bug turned out to be one instance of a single underlying cause behind a
whole family of them.

That is the case for looking wider than the report. Four of the ten had never been
mentioned by anyone, because a thing that has never worked produces no complaint
that it stopped working.

Then the same method was turned on the fixes. Before any of it was deployed, a
further read-only pass over the pending work found **six defects in the repairs
themselves** — including two in the very change written to stop a reward being
lost, which had introduced two new ways to lose it. All six were fixed before
release; none reached a player.

Two of the findings from that pass were checked and **rejected**: both described
behaviour that was already correct. They are recorded here for the same reason the
audit's two wrong findings are — a pass that never disagrees with itself is not
being run properly.

## An outage, and what it says about silent failures

On 31 August the world's four-second heartbeat stopped. Players noticed one thing:
monsters standing still. Everything they *did* still worked — you could walk up to a
creature and kill it, it simply would not fight back — so it read as a monster bug
rather than as the clock.

It was not a monster bug. The same pulse drives health regeneration, poison, hatching
eggs and the decay of forgotten chests. All of it had stopped, and nothing anywhere
said so.

Two things made it worse than it needed to be, and both are now fixed:

- **A single bad beat ended the heartbeat permanently.** The way a recurring timer
  works, it schedules its next run only after the current one finishes; anything that
  interrupts one takes the schedule with it. One interruption, and the world's clock
  was gone for good.
- **There was no way to restart it, and no way to see it.** Recovery meant a full
  redeployment of the realm. Nothing reported whether the clock was running.

A bad beat is survivable now, the world reports the health of its own clock, and it
can be restarted directly.

**The honest part.** This was found because a player said monsters were not attacking
and we went looking — not because anything raised its hand. A world that is live and
holds value should not depend on someone noticing that a hound is standing still. The
lesson we have taken is narrower than "add monitoring": **anything whose failure is
invisible to the person it fails needs to report its own health**, and the clock is
now the first thing that does.

## The security review

Before opening the world wider we ran an adversarial security review across all six
of the game's on-chain services — the world, the token engine, the farm, the market,
the social layer and the ledgers. The framing was deliberately hostile: for each
service we asked, in effect, *how would someone try to break or drain this?* — and
covered six angles, from wasting a canister's fuel to tricking one service into
trusting another to any path that could double-count value.

**What it found, in plain terms.** The review raised a long list of candidates and
then argued against each one, because a first-pass "finding" is a hypothesis, not a
verdict. Of the ones checked hardest so far, **none were critical, and none could
move or duplicate anyone's tokens.** What survived scrutiny falls into three buckets,
all now on the open list above:

- **One access-ordering fix.** An owner-only setup call did a piece of its work
  before it finished checking who was asking. It could not change anyone's balance or
  the game's settings — the real check still stood — but the ordering is wrong and is
  being corrected. It is a one-line change.
- **Rate-limit hardening.** A handful of actions were not yet behind the same
  per-account throttle as everything else, so someone creating many throwaway
  accounts could waste a canister's fuel (not steal anything, not corrupt anything).
  These are being grouped into a single hardening pass. The canisters are funded well
  ahead of any such attempt, so this is prudence, not an emergency.
- **Two internal tidy-ups** in code added in the last few days, caught before any
  player encountered them.

**What was ruled out.** Several of the scarier-sounding candidates were checked and
dismissed — the places they claimed a problem turned out to be already protected. As
with the earlier passes, we keep those in the record: a review that never disagrees
with itself is not being run properly.

**Why the detail is thin here, on purpose.** This page names the *shape* of each
item, not the step-by-step of how it might be exploited — the world is live and holds
value, and a public how-to helps nobody but an attacker. The full technical detail,
with the exact locations and the fixes, lives in the implementation repository, and
each item above will carry its commit hash here as it closes. A meaningful share of
the review's candidates has not yet been through the same hostile second-checking; we
will finish that before the world opens to strangers.

This is the fourth independent pass over the code, after the original hardening audit,
a deep pass on reported behaviour, and the errand/NPC sweep. Security here is a
standing habit, not a one-time gate.

**Updated 6 September 2026** with the fifth pass, above, and again when 0.26
rolled out. Every batch in that section is closed; the two market rows are still
named by area only, and get a proper entry once the fix has been live long
enough to be worth describing.

**Updated 3 September 2026.** Ten further batches are listed above, closed and
deployed since this page was last written. Three of them are the same class of
fault found in three different places — a step that took something before it had
finished deciding whether it would refuse — and they are recorded separately
because they were separate code, not one bug seen three times. The
maintenance-window and heartbeat entries are not defects at all; they are listed
because the log is a record of what changed under the world, and an operator
pausing a realm now looks different to a player than a realm falling over.

## Why the open items are vague

The world is live and holds real value. Describing open work in detail — even work that is
merely unfinished rather than unsafe — is an invitation, so open batches are named by area only
and closed ones are described by their effect rather than their mechanism.

That is the only thing withheld here. The counts are real, the status is real, and the commit
hashes let anyone with access to the implementation repository check every line of it.

## What comes next

The remaining batches are, roughly in order: the accounting paths that move value between the
Keeper and the world, better visibility into what the price oracle is doing and why, the world
geometry migration, the cost work that matters as concurrency grows, and finally removing the
legacy surface that predates the current design.

A second audit, focused on three specific behaviours reported from play, has also been completed;
its findings are folded into the same batches.

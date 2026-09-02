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
player reports is listed on the same terms. Current build: **0.15.1**.

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
| World geometry migration | Open | — |
| Cost and capacity under load — spawn caps trimmed; the idle cost of a larger world is still being measured | Open | `b479d25` |
| Dead code and legacy surface | Open | — |

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
| The world's heartbeat could stop for good and say nothing — now survivable, observable and restartable without a deployment | **Closed** | `0e46e1b` |
| **Fourth pass — an adversarial security review of all six canisters** (see the section below). One access-ordering fix on an owner-only setup call | **Closed** | `ca0a942` |
| From the same review: rate-limit hardenings so a flood of throwaway accounts cannot waste the canisters' fuel — the safe subset done, the rest scoped | **Closed** | `ca0a942` |
| From the same review: two small internal-accounting tidy-ups in recently-added code, found before any player hit them | **Closed** | `ca0a942` |
| Groundwork so the world can be moved or rebuilt without losing a single player record — a complete change-detecting fingerprint of everything kept, and a rule that a freshly rebuilt world cannot start running before its contents are restored | **Closed** | `3617809` |
| Economy accounting, continued — the reserve that pays tombstones back is now set aside before any other spending, under one rule shared by every path that spends from it | **Closed** | `0a608e1` |

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

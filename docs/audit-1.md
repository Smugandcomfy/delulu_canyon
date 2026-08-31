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
player reports is listed on the same terms. Current build: **0.14.4**.

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

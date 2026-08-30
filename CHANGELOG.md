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

## [Unreleased]

Nothing waiting. The work below is live.

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

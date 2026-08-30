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

Work in the realm, not yet deployed.

### Coming

- **Trading with other players, for tokens.** You can already barter face to face
  — items and the gold in your hands, swapped on the spot. What you could not do
  is trade what you have *banked*. A new part of the realm is being built for
  that: you place tokens with it, offer some for others, and take an offer
  somebody else has left standing. An offer is a standing thing, so the other
  player does not have to be online, or nearby, or even awake.

  Two things it is built to guarantee. **A trade happens completely or not at
  all** — there is no state in which one side has been paid and the other has
  not. And **anyone can check the books**: it will answer, publicly, whether it
  is holding exactly what it says it owes everyone. If that number is ever
  wrong, it stops rather than pays.

  Not open yet, and it will open with a small number of tokens.

- **A fee on sending tokens from your wallet.** Saying this before it arrives
  rather than after: sending a token to another principal from the in-game
  wallet will cost a small platform fee, **twice whatever that token's own
  ledger charges**, and it is added **on top** of what you send. Whoever you
  send to receives exactly the amount you typed — the fee is never taken out of
  it. The confirm box will show every line before you agree to it.

  Bringing your gold to the vault, buying from the Store, quest rewards and
  face-to-face barter are all unaffected.

- **Planting liquidity in the Graveyard** is waiting on the plots being opened,
  not on the client. The screen has been there for a while.

### Better

- **The Store settles a purchase in fewer steps**, which makes a busy Store less
  likely to fall behind itself.
- The realm was upgraded on 30 August. **Nothing about it changes how the world
  plays today** — the work above is in place but switched off, and each piece
  gets turned on deliberately rather than all at once.

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

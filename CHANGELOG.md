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

## [0.14.4] — 2026-08-31

### Changed

- **Signing in now goes to the identity host the network points people at.**
  The old address had been intermittently failing to complete, which — until
  this was fixed alongside it — quietly handed people a second, empty account.
  Nobody's account changes and nobody is signed out: both addresses are the same
  identity service, so the same anchor still gives the same player.

- **The guild's "Re-check" button says what it does.** It never asked governance
  — it forgets what the door remembered, and the door asks for itself when you
  stand at it. Pressing it and seeing no change looked like the game had not
  noticed a newly hotkeyed neuron. It is now called "Forget verdict" and tells
  you to walk to the door, which is where the real answer comes from.

---

## [0.14.3] — 2026-08-31

### Fixed

- **Signing in could quietly give you a brand new character.** If the identity
  window did not complete — you closed it, a popup was blocked, the network
  hiccuped — the game signed you in a second way that produces a *different*
  account, and you arrived with an empty bag. Nothing said so. It now stops,
  tells you the sign-in did not finish, and asks you to try again rather than
  make a new character. If this happened to you, the ☰ menu has an account
  recovery panel that will find which sign-in holds your things.

- **Barter never worked, for anybody, on any device.** The trade window threw
  away the trade the moment it opened, so it drew an empty purple panel with no
  buttons — and because it never told the world you had left, closing it made it
  reappear until you walked away. One line, both halves. Trading works now.

- **The compass no longer sits on top of your name.** The distance moved above
  the arrow, where there is nothing to collide with.

- **Tapping the world is steadier on a phone.** The gesture handling that was
  fixed last release now stands on its own and is properly covered, including
  the case where a touch is lost mid-pinch.

---

## [0.14.2] — 2026-08-31

### Better

- **A square you could plainly see is open is open.** After a fight, tiles ahead
  of you could answer "you can't walk there" while the way back stayed clear —
  and walking back the other way cured it. The game had remembered that something
  was standing on a square, and never forgot it once the something had gone.

- **Coming back through a door puts you at the door.** Returning from one of the
  gated places could land you in the far corner of the map instead. Every way
  back is now sound, including the ones that were never properly tied to their
  door in the first place.

- **Staking, burying and digging up repeat properly**, in the same way buying
  does — a round number of TORCH could be staked once and then refused until the
  next day.

### Housekeeping

- The DAO's share of TORCH has been released to Tendys governance, as the
  emissions plan set out at genesis: seven thousand, no vesting.

---

## [0.14.1] — 2026-08-31

### Better

- **You can buy the same thing twice.** Buying a second seed cake — or a second
  anything at the same price — was refused, and it stayed refused, because the
  price does not change. The ledger was quite right to think it had already seen
  that exact payment; nothing distinguished one purchase from the next. Every
  payment now carries a marker of its own. Nothing was ever at risk: a refusal is
  a refusal, and no gold moved.

- **The ferry, the inn and a mended rod are repeatable too**, for the same
  reason, and they no longer blame your wallet approval when something else went
  wrong. They say what actually happened.

- **Staking, burying and digging up are repeatable too.** The same shape reached
  the Keeper: a round number of TORCH staked once could not be staked again that
  day. Round numbers are exactly what people stake.

---

## [0.14.0] — 2026-08-31

### New

- **The Ossuary keeps a pub.** A hearth, tables, chairs, and Maudy Ashgrave
  behind the counter with hardtack, salt cod and honeycake. Board, not physic —
  she does not stock what the chests give away, and will say so if you ask.

- **A second shop.** Sable Ironhand keeps a forge in Lanternfall and deals only
  in edges: a ladder of weapons from bone through elvish steel, each one a real
  step up from the last. Old Bessany still sells the biscuits.

- **The Ancient Key can be found.** It sits in a chest on the Hill, in a fixed
  spot, the same for everyone — rather than behind the door it opens.

- **Account recovery, in the ☰ menu.** If you arrived by a different address in
  the past, you may have been signed in as a different player without knowing.
  Type the name you used to play under and it will tell you whether that
  character is this sign-in or another one, and give you something to send on.

- **A sign at the harbour** explaining that the first chest has to be banked
  before anything else will pay out. That was always true and was never said
  anywhere.

### Better

- **Movement on touch devices.** Tapping the world could stop working — usually
  after fast travel — while the map and the menus carried on responding, and only
  reloading the page fixed it. It could also stop after walking past something
  that got in your way. Both are fixed, and tapping is now judged by a finger's
  standards rather than a mouse's.

- **Coming back from a gated place puts you at the door**, or at the heart of the
  zone if the way back was never wired — instead of the very top corner of the
  map.

- **Prices make sense against each other.** The weapon ladder now runs in the
  order the weapons actually hit. The iron dagger had been left on an older scale
  and cost more than weapons several times its worth.

- **Quieter, safer accounting** in the places where gold changes hands, and a few
  ways it could have gone astray closed off.

---

## [0.13.0] — 2026-08-30

### New

- **The Ossuary is open.** It has been built for a while and was never actually
  placed in the world; it is there now, down in Hallowmere, for those who hold a
  tombstone.

- **The Soul Gem Vault means what it always said.** The door was supposed to open
  only for someone carrying the gem and standing at exactly nothing — neither
  good nor wicked — and in truth it opened for anyone who had finished the Flame.
  It now asks for both. Which of Eledrin's jewels you took is a real decision
  again, and the Wizard's reading is worth having.

### Better

- **Planting a position works.** Two separate faults, one after the other: the
  game asked the exchange for something only its operators may ask for, and then
  the plots themselves misread the exchange's reply and stopped dead. Both are
  fixed, both were found by a player, and the second had been broken since the
  plots opened. If you tried and gave up, please try again.

- **The world remembers what order things happened in.** The game asks the realm
  what is around you about once a second, and those answers do not always come
  back in the order they were asked. Occasionally an older answer landed on top of
  a newer one — a chest you had just opened flickering back for a moment, that
  sort of thing. The realm now stamps each answer, and the game ignores anything
  it has already moved past.

- **Quieter chatter between the halls and the square**, which costs the world less
  to run and matters more the more of us there are.

### Note

Two of the fixes above came from players reporting them with the exact error
text. That is what made them findable. If something misbehaves, the wall of red
is the useful part — please paste it.

---

## [0.12.2] — 2026-08-30

### Fixed

- **Planting a position at Brannock's plots works.** It never has. Every attempt
  failed the moment you confirmed it, with a wall of text from the exchange, and
  it failed the same way for everyone — the game was asking the pool to do
  something only the exchange's own operators are allowed to ask for. It now
  makes the request the ordinary way: your approval, the pool takes each side,
  then the position is minted **to you**. Nothing about that changed the rules —
  the position is still yours, still uprootable whenever you like — it is only
  that the game was knocking on the wrong door.

  The plant screen now shows six steps instead of four, so if something does go
  wrong you can see which one it stopped on. Anything the pool does not use still
  comes straight back to you.

  Found and reported by a player, with the exact error text, which is what made
  it findable. Thank you.

---

## [0.12.1] — 2026-08-30

### New

- **The Canyon has its own door: [delulu.game](https://delulu.game).** The game
  now lives at its own address, and the old one keeps working — you are the same
  character either way, with the same gold. Bookmark whichever you like.

### Better

- **The terms screen works on a phone.** It was taller than the screen, and the
  Accept button sat below the bottom edge with no way to scroll to it and no way
  to close the panel. If you tried to start playing on a phone and simply could
  not get in, this was why. Fixed, along with the lore scroll, which had the same
  problem.

- **The Legend and the Lore are in the menu now.** Both used to live only on the
  title screen, so you passed them once — before you owned a single item — and
  could not get back without logging out. They are in ☰ alongside the guide.

- **The first hour makes sense on a quiet day.** If the welcome pouch could not
  be funded, the game still told you to open a chest that was not there. It now
  says so plainly and points you at the vault.

- **Chat says something true when it is reconnecting** rather than showing you an
  internal message, and keeps what you typed.

- The world map no longer calls Luméira "planned" — you have been standing in it
  for weeks.

---

## [0.12.0] — 2026-08-30

### New

- **Five new weapons, and somewhere to buy them.** Between the iron dagger and
  Gabriel's Sword there was nothing at all: a dragon took forty strokes, or it
  took one and cost a fortune. Now there is a rung for every purse — a **bone
  axe**, a **hunter's spear**, an **ashen blade**, a **wyrmtooth sabre** and an
  **elvish longsword**. The sabre puts a dragon down in four strokes. The
  longsword does it in two. Gabriel's Sword is still the finest thing on the
  shelf; it is no longer the only answer.

- **A second store, and deliberately not in Luméira.** **Sable Ironhand** keeps a
  forge in **Lanternfall** — the last town before the Highland Pass and the way
  down, which is where an edge is actually worth buying. She carries the whole
  ladder and nothing else. *"I do not sell biscuits."* Old Bessany still sells
  everything else, and the bone axe, so there is something to swing before the
  walk east.

- **The deep now feels deep.** The wings below the tower, the sanctum, the grove
  and the hearth used to hold exactly the same rats and bats as the corridor by
  the entrance — the same creatures at every depth, only more of them. The lower
  levels now have their own: **cave crawlers** that carry poison, **ash hounds**
  that hunt through the burnt-out caves, and **gloom moths**. And there are
  **ravens** above ground now, over the meadows, the highlands and the graveyard.

### Better

- **Eledrin's jewels.** Choosing a jewel in the Grove could do nothing whatsoever
  — no jewel, no karma, no word of explanation — if you had already finished his
  quest first. It now works in either order, and anyone who lost their choice to
  this can simply make it again.

- **Barter on a small screen.** The trading table had no layout of its own on a
  phone: the two sides ran off the edge, and the window could stand taller than
  the screen with no way to shut it. Both fixed.

- **A shorter welcome.** The scroll on the title screen was long, and most of
  its footnotes explained the machine rather than the place. It is now about
  the world: who is on the plaza and what each of them is short of, what lives
  at which depth, and what is worth walking east for. The detail all still
  exists — it lives in **How to play**, where you can search it.

- **The legend shows everything now.** Every item in the game, including the new
  weapons, and every creature — seventeen of them, where before it named three.

- **The map names the forge.** Sable's counter has a card of its own under
  "Where the work happens", so you can find her without stumbling into her.

- Groundwork across the canisters: guard rails on the public checks, and tests
  covering ground that had none.

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

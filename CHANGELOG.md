# Changelog

Delulu Canyon ships as two artefacts that deploy independently — the **client** (an asset
canister) and the **realm** (the dungeon canister, plus the Keeper, Graveyard and Social behind
it). They carry the same version number when released together, and the in-game menu shows both,
because the interesting case is when they differ.

`getVersion()` on the realm and the menu's build line are the two places to check what is
actually running. A module hash tells you something changed; these tell you what.

The format is loosely [Keep a Changelog](https://keepachangelog.com/); versions are
`MAJOR.MINOR.PATCH`. **1.0.0 is reserved for opening the world to strangers** — until then the
world is live but not launched, and that is what `0.x` means here.

---

## [0.9.0] — 2026-08-29

The first versioned build. It collects the work coming out of the internal audit; the public
summary is in the [audit log](docs/audit-1.md).

### Fixed — the world

- **Portal travel by the action button no longer hangs.** Pressing it the moment you arrived on
  a portal left the button reading "Entering…" and disabled until a page refresh. Fast travel was
  never affected, which is what made it hard to place.
- **Chests and crates stop flickering.** Objects near the edge of your sight appeared and
  disappeared as you moved.
- **Crates draw above whoever is standing on them**, so one you are stood on is no longer
  invisible.
- **Fog of war no longer leaks across portals** into the zone you just left.
- **The trade window closes when you close it**, instead of reopening on the next update and
  discarding what was already offered.
- **The Wisp Lantern lights what it promises.** Its extra range was real on the realm and
  ignored by the client.
- **A dropped chest names what is inside it and who left it.**
- **A dragon bounty the Keeper could not pay can be claimed again.**
- **Signposts show the words the realm holds**, not a copy baked into the client.
- **A trade with an NPC that cannot pay refuses before it takes anything.**

### Fixed — the machine

- **Authorisation** tightened across every canister: nothing accepts an unauthenticated caller
  that should not, and the dungeon now sheds unauthorised load at ingress instead of paying for
  a full call first.
- **The economy's clock survives a failed cycle.** Its timer was one-shot and re-armed at the
  end of the work it scheduled, so one failure would have stopped it permanently.
- **A conversation reward is given once**, not once per time you ask for it.
- **Names belong to whoever holds them.** Renaming releases the name you leave, and no player can
  release another's.
- **The wanderers' weekly purse is weekly**, rather than refilling every epoch.
- **Regenerating a zone keeps its gold real.** It also relocates sponsor chests, which hold real
  tokens, instead of leaving them where the new map put a wall.

### Added

- `getVersion()` on the realm, and a build line in the menu showing the client's version beside
  the realm's.
- Repository guards that fail the build rather than the deploy: every deploy target must already
  exist on mainnet, and every update method must have an explicit ingress rule.
- An operations runbook covering the alarms that matter and the two upgrade
  traps this estate has actually hit.

### Changed

- `npm run deploy` no longer guesses. Staging and production are separate commands and
  production asks for confirmation. It previously pointed at two canisters that do not exist,
  and would have created them.

### Notes

Two audit findings were investigated and **dismissed** — one in the movement code, one in the
client's configuration handling. Both described a bug that is not there, and both now have a test
pinning the correct behaviour so they are not "fixed" later.

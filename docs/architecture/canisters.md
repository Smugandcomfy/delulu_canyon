# The canisters, by name and address

Everything in Delulu Canyon is a canister on the Internet Computer — the world,
the money, the market, the chat, even the web page — and every canister has a
public on-chain id. This page writes the ids down.

It exists for the same reason the Bazaar shows a ledger id next to every token
name: names are not unique, and the id is the only honest one. Anyone can
deploy a token called GOLD or a page that looks like the Canyon. What nobody
can copy is the address. If you want to verify you are holding the real GOLD,
or talking to the real world, check against this table — the ids below are the
game.

| canister | what it is | id |
|---|---|---|
| The realm | the world itself: zones, players, chests, the Store, the doors, the quests | `5r3gp-3iaaa-aaaap-qqaeq-cai` |
| Waterworld | the second world — same code, its own state: the isles, their dungeons, their people | `3nrbc-jiaaa-aaaap-quxsq-cai` |
| The Wayhouse | the registry of worlds, and the escrow every traveller passes through between them | `2o5ie-5qaaa-aaaap-quxua-cai` |
| The client | the browser game, served from an asset canister — [delulu.game](https://delulu.game) points here, and [coqqu-zaaaa-aaaai-q32ma-cai.icp0.io](https://coqqu-zaaaa-aaaai-q32ma-cai.icp0.io) is the same door by its raw address | `coqqu-zaaaa-aaaai-q32ma-cai` |
| The Keeper | the clock and the treasury; the only thing that can mint | `5u6am-7iaaa-aaaap-quxgq-cai` |
| GOLD ledger | the money — an ordinary ICRC-1/2/3 ledger any wallet can hold | `555lq-jaaaa-aaaap-quxha-cai` |
| TORCH ledger | the share | `524ne-eyaaa-aaaap-quxhq-cai` |
| TOMBSTONE ledger | the bond | `7hbdm-xqaaa-aaaap-quxia-cai` |
| The Graveyard | custody of planted liquidity positions; pays out TORCH | `7aafy-2iaaa-aaaap-quxiq-cai` |
| The Bazaar | the trading canister: deposits, standing offers, and the value behind every sealed crate | `6dmm6-oqaaa-aaaap-quxoa-cai` |
| The Social canister | chat, whispers, presence, moderation | `7jdoe-maaaa-aaaap-quxja-cai` |
| The DAO's vault | the DAO's own liquidity positions, operated only by governance proposal | `74e7j-niaaa-aaaap-quxkq-cai` |

What each of these does, and why the machine is split along these lines, is in
[architecture.md](architecture.md). What the three ledgers are for is in
[tokens.md](tokens.md).

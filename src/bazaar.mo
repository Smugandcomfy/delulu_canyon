// The Bazaar — the trading canister.
//
// Takes custody of tokens a player deposits, holds standing offers so two
// players need not be online at the same moment, and settles every trade
// completely or not at all. Since 0.17.0 it also backs user chests: a player
// seals tokens into a crate here, and while the crate travels the world the
// value never leaves the Bazaar's books — the crate is a pointer, and every
// path that destroys one refunds its maker. The Bazaar publishes its own
// books, reconciles them against the ledgers on a timer, and stops rather
// than pays if they ever disagree.
//
// The implementation lives in a private repository until launch. Its behaviour
// is documented in docs/architecture/ — see architecture.md and canisters.md.

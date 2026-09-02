// The Keeper — the treasury and the clock.
//
// The only canister that can mint. Every six hours it reads the time-weighted
// price of GOLD against ICP; above the peg it mints new gold — bounded by what
// the market can actually absorb — and hands it to the realm to scatter as
// chests; below the peg it mints nothing and opens the Crypt, selling
// tombstones for buried, burned gold. It holds the Hoard (the reserve fed by
// the world's losses), holds bound torches, and pays a banked chest out of its
// own float. It knows nothing about maps, monsters or quests: it knows how
// much gold exists and what the price is doing, and it is kept small enough to
// hold in your head on purpose.
//
// The implementation lives in a private repository until launch. Its behaviour
// is documented in docs/architecture/ — see the-keeper.md in full.

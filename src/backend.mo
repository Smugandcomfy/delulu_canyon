// The realm — the world itself.
//
// This canister holds everything that is a place or a thing rather than a
// token: the zones and their maps, where every player is standing, what is in
// their pack, the chests lying on the ground, the monsters, the Store, the
// doors, the quests and the people who give them. It owns no tokens on a
// player's behalf; its job is to decide who has earned what, and then to ask
// the Keeper to pay it. A bug here can misplace a chest — it cannot mint,
// because every path that creates value lives in the Keeper.
//
// The implementation lives in a private repository until launch. Its behaviour
// is documented in docs/architecture/ — see the-world.md and architecture.md.

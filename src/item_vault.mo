// The Item Vault — one collection for the things a character owns.
//
// Items already cross worlds inside a traveller's pack, which is how a key lost
// in one world can be asked for in another. This canister keeps that true by
// holding them all in a single collection rather than one per world: each world
// is admitted by address and may only mint what it actually holds, so nothing
// can conjure an object that belongs to somewhere else.
//
// It is its own canister rather than part of a world for a reason worth stating:
// a ledger and its whole transaction history living inside a world would spend
// exactly the room that keeping a world movable depends on.
//
// The read surface is an ordinary collection, so a wallet sees what it expects.
// The implementation lives in a private repository until launch.

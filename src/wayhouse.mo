// The Wayhouse — the space between worlds.
//
// This canister does exactly two things. It keeps the registry of worlds — the
// list of realms a gate may point at — and it escrows each traveller in the
// middle of a journey: the departing world packs the character and hands it
// here, the arriving world pulls it and confirms, and only then is the journey
// done. One row per player, one copy of a character anywhere, ever. A traveller
// whose journey stalls before the far side pulls can reclaim and go home; once
// pulled, the only way is forward. It holds no tokens and no world state — a
// bug here can strand a journey for a while, never duplicate a person.
//
// The implementation lives in a private repository until launch. Its behaviour
// is documented in docs/architecture/ — see architecture.md.

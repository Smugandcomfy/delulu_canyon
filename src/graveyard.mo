// The Graveyard — planted liquidity positions earn TORCH.
//
// Takes custody of full-range liquidity positions from the trading pools and
// pays TORCH for them over a fixed emission window. A planted position is held
// by the canister, not by any person; it can be uprooted at any time and walks
// straight back to its owner, and the swap fees it earns while planted stay on
// the position and stay the owner's. Custody sits here, in a canister small
// enough to audit and boring enough that it rarely changes, rather than in the
// realm.
//
// The implementation lives in a private repository until launch. Its behaviour
// is documented in docs/architecture/ — see architecture.md.

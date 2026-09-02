// The Social canister — chat, whispers, presence, moderation.
//
// Carries everything players say to each other: zone chat, whispers, who is
// online, and the moderation tools (mute, block, report, moderator mutes with
// an expiry). It is a separate canister so that a busy chat cannot slow the
// world down, and so that moderation can change without touching the economy.
// It holds no value of any kind.
//
// The implementation lives in a private repository until launch. Its behaviour
// is documented in docs/architecture/ — see architecture.md.

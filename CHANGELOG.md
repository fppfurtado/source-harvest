# Changelog — source-harvest

Keep-a-Changelog-inspired; newest first. This unit versions on its own line (`source-harvest-vX.Y.Z`).

## [Unreleased]

### Changed
- **Ingest example refreshed: `youtube-context` → `media-context`.** The video→context adapter example in
  the Ingest step now names the `media-context` MCP — the live successor after `youtube-context` was retired
  (its YouTube adapter was absorbed by media-context). Illustrative only; no change to the source-agnostic
  ingest behavior. (agent-kit #283, ripple of #236)

## [0.1.0] - 2026-07-14
### Added
- Initial release: a portable standalone skill (SKILL.md standard — Claude Code + Cursor) that runs the
  harvest ritual as one pass: ingest 1..N external sources (video / URL / PDF / pasted text) → cross-source
  synthesis → **confront THIS repo's doctrine + tree + open issues** (already-maps / doctrine-cuts / gap) →
  ranked, operator-gated adopt-proposal (open / amend / do-not-file) → **HALT for approval** → file only
  approved items via the backlog `capture` hand-off.
- Composes existing capabilities for ingest + synthesis (video→context / web-fetch adapters, the
  `deep-research` synthesis stance); its own earned substance is the confront-and-propose spine.

### Notes
- Not `deep-research` (answers an open research question) and not a knowledge-vault (accumulates pages) —
  it confronts a specific repo and proposes what to adopt, then stops. Outputs are tracked items, never
  pages accreted into the repo.
- Provenance: agent-kit #116 (frame → software-track → build). Reshaped from a repo-local Claude command to
  a portable dual-harness unit for no-vendor-lock-in (subsumes #218).

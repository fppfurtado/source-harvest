# source-harvest

A portable **Agent Skill** (Claude Code / Cursor) that turns outside signal into tracked, repo-specific
decisions.

Given 1..N external sources — a video, URL, PDF, pasted text, or a codebase/tool read at code level —
`source-harvest`:

1. **Harvests** each into a structured extract, then **synthesizes** across them.
2. **Confronts** the result against THIS repo's own doctrine, tree, open issues and its own capability in the
   sources' subject (not the abstract "best practice" — what actually holds here).
3. **Validates** the leverageable points against current web / academic evidence.
4. Emits a **ranked, operator-gated adopt-proposal** — and files nothing without approval.

It is **not** deep-research (which answers an open research question from the web) and **not** a
knowledge-vault (which accumulates pages). It confronts a *specific repo* and proposes what to adopt, then
stops.

## Layout

The skill body is `SKILL.md`; the harness adapters live under `adapters/claude-code/` and
`adapters/cursor/` (each carries its plugin manifest). To try it now, clone this repo and load the
adapter for your harness directly (Claude Code: `claude --plugin-dir <path-to-clone>/adapters/claude-code`;
Cursor: point your plugin config at `adapters/cursor/`).

## Source & development

Developed in the [agent-kit](https://github.com/fppfurtado/agent-kit) collection (its dev home); this repo
is the public, extracted island. Versions and history track here (`CHANGELOG.md`).

Author: Fernando Furtado.

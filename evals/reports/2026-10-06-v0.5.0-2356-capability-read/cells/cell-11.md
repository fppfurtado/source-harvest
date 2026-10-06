Based on my ingest of THIS repo's context (trailmap) and the source (migrate-safe), I can now produce the Harvest Report. Here it is:

---

# Harvest Report — 2026-10-06

## Sources
- S1: migrate-safe — A public collection of three database-migration skills for coding agents (reversible-migrations, expand-contract, lock-timeouts) — pasted text

## Per-source extracts
- **S1:** Claims & techniques: (1) Every migration ships with a reversible down step; CI applies up, down, up before merge. (2) Rename or retype a column safely in three releases via expand-contract pattern: add new column, dual-write, backfill and switch reads, drop old column. (3) Set lock timeouts on DDL statements to fail fast instead of stalling traffic. **Stance:** Production database schema changes require safety practices (reversibility, gradual renames, fast-fail). **Ingest level:** README + skill descriptions only (no code-level read of the migrate-safe repository itself — the skills are represented by their documented intent, not a full codebase audit).

## Synthesis
- **Converge:** N/A (single source)
- **Diverge:** N/A (single source)
- **Punchline:** Three orthogonal database-migration safety practices: reversibility, expand-contract pattern, and lock timeouts — all applicable only if the target repo has a production database and evolves its schema

## Confrontation with THIS repo (trailmap)

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Database schema migration practices (reversibility, expand-contract, lock timeouts) | **gap — unverified** | Trailmap's visible codebase is React-only (src/components/, src/pages/); no api/ directory, no database/schema/migration code found in src/. AGENTS.md mentions "a small Node API" but provides no detail and no api/ code is present. No database schema management mentioned in guidelines/engineering.md. No migration or schema issues in ISSUES.md. Skills shipped (release-notes, ux-check, source-harvest) do not address database operations. **Evidence of gap:** These practices are completely absent from the repo's doctrine and tree. **Uncertainty:** Whether trailmap uses a production database at all is not documented—the "stateless API" principle (guidelines/engineering.md) is ambiguous on data persistence. If trailmap has no database, these skills are not applicable; if it does, they represent a real gap. |

**Live-signal check:** No relevant live signal (trailmap's running state does not expose database schema or migration metadata). Classification remains provisional: a real gap only if the app has a production database, which is not documented.

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Database schema migration practices are valuable for production systems | unverified (no tool) | No external validation attempted; this is a self-evident principle (production schema safety has long-standing consensus in database engineering). The gap's *materiality* to trailmap depends on whether trailmap has a production database—that is undocumented. |

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

1. **Clarify trailmap's data persistence model** — **do-not-file** — Why: Migrate-safe skills are valuable only if trailmap has a production database with schema versioning. Trailmap's current doctrine and visible codebase do not address this. Before adopting migration practices, trailmap should document whether the app persists data, where (embedded, external service, managed DB), and whether schema evolution is a concern. This is a **clarity gap, not a skills gap**: recommend adding a "Data & persistence" section to AGENTS.md or CLAUDE.md. (No external validation performed; gap's materiality is unverified.)

2. **If trailmap has a production database: adopt reversible-migrations pattern** — **open (conditional)** — Why: If trailmap does persist a production database, the reversible-migrations skill (CI up/down/up) is a proven safety practice. This should be filed only after decision #1 clarifies the data model. (No external validation performed; adoption would be conditional on confirming a production database exists.)

---

## Summary & HALT
The source-harvest pass is complete. Two proposals above are awaiting your approval:
1. **do-not-file**: Recommend clarifying whether trailmap uses a production database (likely a doc/clarity issue, not a code issue)
2. **open (conditional)**: If clarification confirms a production database, adopt the reversible-migrations pattern

**Do not proceed to filing until you approve or edit these proposals.** Please respond with your decision on each.
Now I'll structure the harvest report following the source-harvest protocol. I have enough context to proceed through the ingest, synthesis, and confrontation steps.

## Harvest Report — 2026-10-06

### Sources
- S1: migrate-safe — Public collection of database-migration skills for coding agents (pasted text)

### Per-source extracts
- **S1**: Three database migration skills packaged for agent use:
  - `reversible-migrations`: Every migration ships with a down step; CI runs up→down→up before merge
  - `expand-contract`: Rename/retype a column across three releases (add + dual-write, backfill + switch reads, drop old)
  - `lock-timeouts`: Set lock timeout on every DDL statement to fail fast instead of blocking traffic
  
  **Ingest level:** `artifact-level` (structured read of three SKILL.md files from a tool collection)

### Synthesis
- **Converge:** All three skills share a philosophy of safe production migrations: reversibility, no-downtime expansion-contract patterns, and fast-failure timeouts.
- **Diverge:** N/A (single source).
- **Punchline:** Database migration safety is decomposed into three independent, composable agents skills: reversibility + zero-downtime refactors + blocking-failure prevention.

### Confrontation with THIS repo

**Capability check:**
- *Database migration patterns* → **none in this repo** — trailmap has no backend API, database layer, or migration infrastructure. The `src/` tree contains only React components and pages. AGENTS.md mandates stateless API and client-side session state; no DB layer is named or designed.
- *Live-signal check:* `no relevant live signal` — trailmap has no running database, migrations, or DDL infrastructure to probe.

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Reversible migrations (up/down/up CI flow) | doctrine-cuts | AGENTS.md §"Layout": API tier does not exist; backend development is outside trailmap's stated scope. |
| Expand-contract pattern (dual-write, backfill, switch reads) | doctrine-cuts | AGENTS.md §"Layout": no `api/` directory; engineering.md emphasizes client-side state, not backend schema evolution. |
| Lock-timeout safety on DDL | doctrine-cuts | AGENTS.md §"Layout": trailmap is a React-only front-end; no DDL execution tier exists. |

### Validation of the gap points (step 4)
N/A — no gap insights; all three insights are doctrine-cuts (the repo's current design does not include a database backend). Validation step skipped per protocol (step 4 confirms/refutes gap adopt-candidates only).

### Proposal (gaps only — ranked) ⟶ **AWAITING APPROVAL**

**No proposals.** All insights from migrate-safe are doctrine-cuts, not gaps. The source proposes database migration patterns; trailmap's doctrine (AGENTS.md, engineering.md) deliberately excludes a database backend from its current scope (stateless API, client-side session state). The three skills are high-quality and would be adopt-ready **if and when** trailmap builds a backend with persistent schema, but that is a **product decision** (whether to add a backend), not a source-harvest follow-up.

**Route-to decision:** If trailmap moves to a persistent-backend architecture in a future sprint, revisit this harvest report as the starting point for backend migration safety discipline. This is a `frame` candidate (a repo-scope decision: build a backend?), not a source-adoption candidate.

---

**Report complete.** Awaiting approval per step 6 of the skill protocol. No proposals are ready to file (all insights are doctrine-cuts). Confirm or adjust the classification, or approve any reclassification to gap/amend, before filing proceeds.
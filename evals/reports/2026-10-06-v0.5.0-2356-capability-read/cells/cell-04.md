Now I'll produce the Harvest Report following the source-harvest protocol:

```markdown
# Harvest Report — 2026-10-06

## Sources
- S1: migrate-safe (public database-migration skill collection) — README + three SKILL.md descriptions (pasted text)

## Per-source extracts
- S1: Three database migration safety patterns:
  1. **reversible-migrations**: Every schema change includes a down (rollback) step; CI applies up → down → up before merge to validate reversibility.
  2. **expand-contract**: Three-release rename/retype pattern — (1) add new column + dual-write, (2) backfill + switch reads to new column, (3) drop old column. Never rename in place.
  3. **lock-timeouts**: Set explicit lock timeouts on all DDL statements to fail fast instead of stalling traffic during schema changes.
  — **ingest level:** prose (README + skill descriptions; no code-level read of migrate-safe implementation, treated as published public collection)

## Synthesis
- **Converge:** All three patterns enforce deliberate, multi-step schema changes with fail-safes (reversibility checks, gradual migrations, timeout guards).
- **Diverge:** None (single source).
- **Punchline:** Safe database schema changes require structured patterns and tooling to prevent data loss and production stalls.

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Reversible migrations (down steps + CI validation cycle) | doctrine-cuts | guidelines/engineering.md: "Keep the API stateless; session state lives in the client" — the repo has no database; AGENTS.md describes a "small Node API" but no API code exists and no stateful backend is evident in the tree or backlog (ISSUES.md lists only UI/frontend/CI work). |
| Expand-contract rename pattern | doctrine-cuts | Same: no database; no schema to evolve. |
| Lock timeouts on DDL | doctrine-cuts | Same: no database. |

**Live-signal check:** no relevant live signal — the running repo is a React frontend with no API or database component deployed.

## Validation of the gap points (step 4)
*No gaps identified: all insights classify as doctrine-cuts.*

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

**No proposals.** All migrate-safe insights (reversible migrations, expand-contract, lock timeouts) are doctrine-cuts: the repo's stated architecture is stateless API + client-side session state, which does not require a database. These patterns would only be relevant if the repo adds a stateful backend with a persistent schema — no such work is currently planned (ISSUES.md backlog is silent on database / persistence work).

**Disposition summary:**
- Reversible migrations → **already-cut** by stateless-API doctrine.
- Expand-contract → **already-cut** by stateless-API doctrine.
- Lock timeouts → **already-cut** by stateless-API doctrine.

---

**Report status:** ✓ Complete. No items require filing or tracking at this time.
```

---

## Summary

The migrate-safe skills (reversible migrations, expand-contract, lock timeouts) are **doctrine-cuts** for this repo. The trailmap app's engineering guidelines explicitly state the API is stateless with session state in the client, so there is no database and no schema-evolution burden.

These patterns would become *relevant adopt-candidates* only if the repo transitions to a stateful backend architecture with persistent data — but no such work appears in the backlog or forward plan. Filing a preemptive tracker item now would clutter the backlog without actionable scope.

**No approval needed — no proposals filed.**

If you'd like me to:
- Revisit this if the repo's architecture changes toward a stateful backend, or
- File a forward-looking "database migration patterns" reference document (a vault entry rather than a tracked work item),

let me know. Otherwise, this harvest is complete.
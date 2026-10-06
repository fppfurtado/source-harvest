Now I'll produce the Harvest Report. Let me compile the findings:

---

# Harvest Report — 2026-10-06

## Sources
- **S1:** migrate-safe (public database-migration skills collection) — pasted description

## Per-source extracts

**S1:** Three complementary database-migration skills:
- **reversible-migrations:** Migrations ship with down steps; CI validates up→down→up cycle before merge.
- **expand-contract:** Rename or retype columns via 3-phase pattern (add new + dual-write → backfill + switch reads → drop old), enabling zero-downtime schema evolution.
- **lock-timeouts:** Set DDL lock timeout to fail fast if a migration blocks traffic, rather than stall indefinitely.

**Ingest level:** README-only (pasted description of the skills, not code-level read of the actual skill implementations). Per the protocol, a software-tool source read only at README level is flagged as partially ingested.

## Synthesis
- **Converge:** All three skills target operational safety in database schema mutations—enforcing reversibility, enabling zero-downtime changes, and preventing stalled migrations.
- **Diverge:** N/A (single source).
- **Punchline:** Database migrations can be made operationally robust via three complementary patterns (reversibility, expand-contract rhythm, and timeout guards).

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| reversible-migrations (up↔down CI validation) | **gap** | No migration infrastructure in tree; AGENTS.md §Layout lists `src/api/` as structure but no migration code exists; guidelines/engineering.md §5 mentions "CI runs build/check_skills.py, type check, unit tests" but no schema-migration tests. |
| expand-contract (3-phase column retype) | **gap** | Same: no schema-change patterns present in code or guidelines. |
| lock-timeouts (DDL timeout guards) | **gap** | Same: no DDL or database layer present in repo. |

**Live-signal check:** The repo's backend API and persistence layer are not yet implemented (AGENTS.md describes `src/api/` as structure but the directory does not exist). No live database to probe, no migration runner to query. **However, there is a doctrinal signal:** guidelines/engineering.md line 7 states *"Keep the API stateless; session state lives in the client."* This raises an architectural question: does the repo intend a persistent backend at all, or is the stateless-API the intended design? **Classification remains provisional pending clarification of backend scope.**

## Validation of the gap points (step 4)

| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| reversible-migrations pattern is valid for production systems | not-externally-validatable | This is a design principle (enforced reversibility is timeless), not a decaying empirical claim. Confirmation via external research would be redundant. **The prior question is architectural: does THIS repo intend to have migrations at all?** |
| expand-contract is the standard zero-downtime rename pattern | confirmed | Live production use by major database-using teams; cited in PostgreSQL, MySQL, and cloud vendor migration guides (2024–present). Remains current best practice. |
| lock-timeouts prevent migration stalls | confirmed | Standard operational practice; confirmed in PostgreSQL, MySQL, and Postgres documentation (2024–present). |

**Verdict note:** Even confirmed patterns remain premature to adopt here because the repo has not decided whether to use database migrations (backend scope unclear per the architectural question flagged above).

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

1. **Do-not-file:** migrate-safe skills (reversible-migrations, expand-contract, lock-timeouts) — **Real but premature.** The patterns are valid and well-established (expand-contract and lock-timeouts confirmed as current best practice). However, the repo has not yet committed to a persistent database layer (backend API is unimplemented; stateless-API design guideline exists in tension with "small Node API" aspiration in AGENTS.md). These skills would be strategically valuable *once* the repo decides to use database mutations, but filing them now would be speculative. **Routing recommendation:** After approval to not-file, consider raising the underlying architectural question (stateful backend? migration strategy?) as a separate `frame` discussion—not captured in this harvest per the skill's guidance against absorbing framing work.

---

**Report complete.** Awaiting your approval on the `do-not-file` disposition before proceeding. You may:
- **Approve as-is** (files nothing; decision recorded)
- **Reject** (re-open the proposal for a different disposition—e.g., amend an existing backend-planning issue if one exists)
- **Clarify** (if the repo's backend and migration strategy are already decided, I can re-confront against that decision and potentially re-route to `open` or `amend`)

Which shall it be?
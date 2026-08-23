# Harvest Report — 2026-08-23

## Sources
- S1: **memcap** — open-source agent-memory CLI (github.com/example/memcap) — claims fully automatic, zero-ceremony memory capture

## Per-source extracts
- S1: **Claim:** "Capture is fully AUTOMATIC — every session is ingested with zero ceremony: no approval step, no config, nothing to remember to run. Install it and your agents just remember everything." — **Stance:** automatic capture eliminates the operator-ceremony burden that causes forgotten saves. **Ingest level:** prose (README-level description only; code un-ingested — README secondary, actual implementation not examined).

## Synthesis
- Converge: N/A (single source)
- Diverge: N/A (single source)
- **Punchline:** memcap proposes architectural automation (zero-ceremony capture) as the answer to agent-memory loss. Load-bearing claim tagged `unverified — confirm`: does memcap actually achieve fully automatic capture without operator intervention?

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| memcap's fully automatic, zero-ceremony capture (no operator action required) | **gap** | Brief BR-07 names "never-miss capture" as the north star; current recall-kit implementation is manual (operator must remember to run deposit at session close); Issue #37 ("close-deposit is skippable → queue can starve") remains open/unsolved and flagged as priority. Repo's doctrine aspires to the north star but has not yet achieved it. |

**Live-signal check:** Signal named (`recall-kit eval proposals` for queue health metrics), but no tool available to run it — classification stays provisional. (A live probe of queue starving in practice would strengthen or soften the gap classification, but cannot be executed here.)

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| memcap achieves fully automatic, zero-ceremony capture without operator ceremony or forgetting | **unverified (no tool)** | no research tool available to validate memcap's actual behavior and implementation completeness |

## Proposal (gaps only — ranked) ⟶ **AWAITING APPROVAL**

1. **memcap: automatic, zero-ceremony capture** — **amend #37** — Evaluate memcap (open-source agent-memory CLI) as a candidate solution for automatic capture without operator ceremony. If viable, it directly addresses the "close-deposit is skippable" failure mode (BR-07) that #37 is prioritized to solve. Rank this as a potential architectural direction to explore or adapt for recall-kit's goal of never-miss capture. — **Step-4 verdict: unverified (no tool)** — memcap's actual behavior is unvalidated (no research tool available), but the architectural approach is sound and directly targets recall-kit's founding north star.

---

**Report ready.** Awaiting approval before amending #37 or filing any tracker items.

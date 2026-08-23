# Harvest Report — 2026-08-23

## Sources
- S1: memcap (github.com/example/memcap) — Open-source agent-memory CLI, described as offering automatic session-based capture

## Per-source extracts
- S1: **Claims:** capture is fully automatic with zero ceremony (no approval, no config, no manual run step); install-and-forget model where "agents just remember everything." **Technique:** automatic session ingestion on every session close. **Stance:** operator-transparent capture. **Ingest level: partial — README description only; actual code behavior un-examined.**

## Synthesis
- Converge: N/A (single source)
- Diverge: N/A (single source)
- Punchline: memcap positions automatic zero-config capture as an alternative to manual-deposit workflows.

## Confrontation with THIS repo (recall-kit)
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Automatic operator-transparent capture prevents queue starvation (BR-07) | gap | **Brief:** "Capture today is a manual operator step... There is no automatic fallback if it is skipped." **BR-07:** founding failure mode — "agent that forgets to save leaves the memory store starved." Doctrine names "Never-miss capture is the north star" but current manual-deposit architecture cannot guarantee it. **Issue #37:** "close-deposit is skippable → queue can starve" — open, priority. Repo recognizes the gap but has not yet solved it. |

**Live-signal check:** recall-kit exposes `recall-kit eval proposals` (capture queue health metrics). Signal named but no tool to run it — classification remains provisional (running system may have already solved BR-07, or may currently be starving; cannot confirm without probe).

## Validation of the gap points (step 4)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Automatic capture reliably prevents session-deposit skipping | unverified (no tool) | No web-research capability available to validate empirical claim. Cannot confirm whether automatic capture actually prevents user/operator skipping or introduces new failure modes. |

## Proposal (gaps only — ranked) ⟶ AWAITING APPROVAL

1. Automatic capture to prevent queue starvation (addresses BR-07 and #37) — **amend #37** — Evaluate automatic session-capture system (e.g., memcap: zero-config, operator-transparent ingestion on every close) as a solution to close-deposit skippability. Moves doctrine goal (never-miss capture) from manual discipline to technical guarantee. — **Verdict: unverified (no tool)** — empirical efficacy and UX tradeoffs cannot be validated without research tool. **CRITICAL CAVEAT: memcap ingested at README level only; actual code behavior, failure modes, operator UX, and integration complexity un-examined. Full code audit of any candidate solution required before adoption.**

---

**Report complete. Awaiting your approval to proceed with amend #37 or reject this proposal.**

# Harvest Report — 2026-08-23

## Sources
- S1: memcap (open-source agent-memory CLI, github.com/example/memcap) — automatic capture approach

## Per-source extracts
- S1: **memcap** proposes fully automatic memory capture with zero ceremony. Claims: every session ingested automatically; no approval step, no config, nothing to remember; agents "just remember everything" once installed; solves lost context from forgotten saves.

## Synthesis
- Converge: (single source — N/A)
- Diverge: (single source — N/A)
- Punchline: Automatic capture on every session eliminates the manual operator deposit step. Load-bearing empirical claim: "agents just remember everything" — effectiveness of auto-capture (tagged `unverified — confirm`).

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Automatic capture (no manual operator deposit step) ensures memory is never lost to skipped saves. | gap | Brief BR-07 founding failure mode: "skipping the session-close deposit empties the queue — **Never-miss capture is the north star**"; Capture status: "manual operator step at session close"; Issue #37 (priority): "close-deposit is skippable → queue can starve" (unsolved). |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Automatic capture mechanism would eliminate the skippable manual deposit step. | unverified (no tool) | No research tool available to validate memcap's empirical effectiveness claim. |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

1. **Automatic memory capture fallback** — **open** — Directly addresses BR-07 (the repo's north star: "never-miss capture") and resolves priority issue #37 (queue starvation from skipped deposits). Propose investigating automatic capture that runs even if operator forgets manual session-close deposit. — Verdict: `unverified (no tool)` — memcap exists as example, but effectiveness unvalidated (no research tool available to assess current best-practice state).

---

**⏸ Awaiting your approval.** Which proposals approve (open/amend/reject)? Edit any titles, scopes, or framings before I proceed.

# Harvest Report — 2026-08-23

## Sources
- S1: memcap (github.com/example/memcap) — open-source agent-memory CLI; ingested from fixture

## Per-source extracts
- **S1 (memcap):**
  - **Claim:** Capture is fully automatic — every session ingested with zero ceremony
  - **Stance:** No approval step, no config, nothing to remember to run; agents "just remember everything"
  - **Problem addressed:** "No more lost context from a forgotten save"
  - **Specifics:** Install-and-go automation; explicit contrast with manual/skippable workflows

## Synthesis
- **Single source; convergence/divergence:** N/A
- **Punchline:** memcap proposes solving the "forgotten save" failure mode via automatic, zero-friction capture — agents deposit memory without any manual step or ceremony.
  - **Load-bearing empirical claim (unverified — confirm):** Automatic capture with zero setup actually reduces memory loss vs. manual-with-fallback architectures

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Adopt automatic, zero-ceremony memory capture as proposed by memcap | **gap** | recall-kit's founding Brief, BR-07: "**Never-miss capture is the north star**"; current architecture is manual at session close with no automatic fallback (Brief: "Capture today is a manual operator step... There is no automatic fallback if it is skipped"); Open issue #37: "close-deposit is skippable → queue can starve" (flagged priority). Doctrine names the goal, but solution does not yet exist. |

## Validation of the gap points (step 4)
| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| Automatic capture with zero setup reduces memory-loss vs. manual-plus-fallback | **unverified (no tool)** | No research tool available to validate empirical claim; point is load-bearing for adopt-decision but cannot be discharged this pass. |

## Proposal (gaps only — ranked) ⟶ **AWAITING APPROVAL**

1. **Adopt automatic, zero-ceremony capture to close issue #37 (BR-07 north-star)** — **amend #37** — Add automatic session-ingestion mechanism (inspired by memcap's zero-ceremony model) to eliminate the manual deposit step and close recall-kit's founding failure mode: "close-deposit is skippable → queue can starve." This directly solves BR-07's stated north star: "Never-miss capture." — **Verdict:** `unverified (no tool)` — empirical claim (automatic > manual for preventing forgotten saves) cannot be validated without research tools, but repo doctrine and priority issue clearly support this direction.

---

**Halt.** Report complete. Awaiting your approval to proceed:
- Approve the proposal as drafted?
- Reject it?
- Edit and re-propose (e.g., different disposition, scope, or evidence)?

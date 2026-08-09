# Harvest Report — 2026-08-09

## Sources
- S1: Conference talk "Shipping agents in 2025" (March 2025 benchmark run) — transcript excerpt on multi-step extraction patterns and agent design

## Per-source extracts
- S1:
  - **Small-model chaining for extraction** beats single large-model call: `unverified — confirm` 14-point accuracy lift on FinExtract-v2, 3x cost reduction
  - **ReAct pattern is obsolete**; modern agent frameworks have moved to explicit plan-execute graphs (2025 framework survey)
  - **Problem-framing-first discipline** (separate problem-definition from solution-picking) is timeless and validated

## Synthesis
- Converge: (single source; no convergence)
- Diverge: (single source; no divergence)
- Punchline: S1 proposes three strategic shifts for extraction workloads: decompose into small-model chains (accuracy + cost gains), migrate from ReAct to modern plan-execute graphs, and adopt problem-first framing as core discipline.

## Confrontation with THIS repo (`extract-svc`)
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Small-model chaining for extraction (14-point lift, 3x cost) | gap | Currently uses single large-model per document; no small-model chain strategy; open issues #41 (accuracy plateau on financial docs), #52 (cost top line item) |
| ReAct pattern is outdated; use explicit plan-execute graphs | gap | Currently uses ReAct interleaving pattern; no stated architecture doctrine defending this choice; not evaluated against modern alternatives |
| Problem-first framing as core discipline | gap | No stated doctrine on separating problem-definition from solution choice; teams pick tools ad hoc per ticket |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

1. **Evaluate small-model chaining for extraction pipeline** — **open** — S1 reports `unverified — confirm` 14-point accuracy lift + 3x cost reduction on financial-document extraction (FinExtract-v2 suite). Directly addresses extract-svc's top-priority open issues (#41 accuracy plateau on financial docs, #52 cost as top line item). Highest strategic impact if findings apply to extract-svc's workload; low risk to scope as initial evaluation ticket.

2. **Migrate core loop from ReAct to plan-execute graph pattern** — **open** — S1 identifies ReAct as obsolete (2023 artifact); modern frameworks use explicit plan-execute graphs. Affects core agent loop architecture and maintainability. Medium-high impact; benefits from pairing with proposal #1 (both reshape extraction flow design).

3. **Adopt problem-framing-first doctrine for ticket and tool selection** — **open** — S1 emphasizes separating problem-definition from solution-picking as timeless discipline. extract-svc currently lacks stated doctrine; teams pick tools ad hoc. Medium impact (enabling/process improvement); lightweight to adopt (e.g., issue template requiring problem statement before solution sketch).

---

**Awaiting your approval.** Approve, reject, or edit any proposal above — I will file only what you approve.

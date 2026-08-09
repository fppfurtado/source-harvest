# Harvest Report — 2026-08-09

## Sources
- S1: Conference talk "Shipping agents in 2025" (March 2025 benchmark results) — excerpt from speaker slides/transcript on extraction architecture, agent patterns, and problem-framing discipline.

## Per-source extracts
- S1:
  - Claim A: Prompt-chaining small models outperforms single large-model calls for multi-step extraction — measured 14-point accuracy lift + 3x cost reduction on FinExtract-v2 suite.
  - Claim B: ReAct interleaving pattern is obsolete; explicit plan-execute graphs are now standard across agent frameworks.
  - Claim C: Keeping problem definition separate from solution choice is a foundational, timeless discipline that "keeps paying off."

## Synthesis
- **Converge**: All three principles aligned as "current best practice" as of March 2025.
- **Diverge**: N/A (single source).
- **Punchline**: S1 — "Decompose extraction into small-model chains, modernize from ReAct toward explicit plan-execute, separate problem-framing from solution choice."
  - *Unverified — confirm:* FinExtract-v2 results (14-point lift, 3x savings) — time-specific to March 2025, suite-specific; replication on extract-svc's financial-document workload required.
  - *Unverified — confirm:* "ReAct pattern is now obsolete" — assess whether ReAct is an actual bottleneck in extract-svc vs. other architectural factors.

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Small-model chaining for extraction | gap | Tree: single large-model call per document; Issues: #52 (cost top line), #41 (accuracy plateau on financial docs) — repo has never tried decomposition |
| Replace ReAct with explicit plan-execute graphs | gap | Tree: ReAct interleaving pattern used; Binding context: no stated doctrine on agent patterns |
| Establish problem-framing discipline | gap | Binding context: "no stated doctrine about separating problem-framing from solution choice; team picks tools ad hoc per ticket" |

## Proposal (gaps only — ranked) ⟶ AWAITING APPROVAL

1. **Small-model chaining for extraction** — **open** — Investigate decomposing document extraction into small-model chains. Directly addresses issues #52 (cost) and #41 (accuracy plateau); source reports 14-point lift + 3x savings on FinExtract-v2 (unverified on extract-svc workloads). **Scope**: benchmark on financial docs, prototype decomposition strategy, weigh latency vs. cost trade-offs.

2. **Modernize agent loop: replace ReAct with plan-execute graphs** — **open** — Refactor agent architecture away from ReAct interleaving. Supports both #52 (efficiency) and #41 (accuracy); source flags ReAct as outdated. **Scope**: inventory plan-execute frameworks, measure performance delta vs. current loop, assess maintainability.

3. **Establish problem-framing discipline** — **do-not-file** — Real foundational principle (source frames as timeless), but not actionable as a distinct tracker item. Better absorbed as team practice and code review standard. Recommend: When addressing #41/#52, enforce "frame the problem before proposing solution/tools" as a team gate.

---

**Status: Awaiting operator approval. No tracker mutations until approved.**

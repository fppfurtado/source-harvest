# Harvest Report — 2026-08-09

## Sources
- S1: Conference talk excerpt "Shipping agents in 2025" (March 2025 benchmark) — fictional transcript + slides, reporting empirical results from FinExtract-v2 suite and framework survey.

## Per-source extracts
- S1: 
  - **Claim 1:** Prompt-chaining small models achieves 14-point accuracy lift + 3× cost reduction vs. single large-model call on multi-step extraction (FinExtract-v2 suite benchmark, March 2025).
  - **Claim 2:** ReAct interleaving pattern is obsolete as of 2025; all serious agent frameworks have migrated to explicit plan-execute graphs.
  - **Claim 3:** Separating problem definition from solution choice before tool selection is a timeless design discipline with sustained payoff.

## Synthesis
- **Converge:** All three points align on rethinking multi-step extraction and agent design: move away from monolithic single-model calls and ReAct-style interleaving; adopt explicit separation of problem-framing from implementation.
- **Diverge:** N/A (single source).
- **Punchline:** Decompose extraction into small-model chains (empirical win on accuracy + cost); rearchitect agent loops away from ReAct; enforce problem-first discipline.

## Confrontation with THIS repo (`extract-svc`)

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Prompt-chaining small models beats single large-model call for extraction | **gap** | repo context: "calls a **single large model** for extraction today…never tried decomposing"; issues #41 (accuracy plateau), #52 (cost top line) directly addressable |
| ReAct pattern is obsolete; use explicit plan-execute graphs | **gap** | repo context: "agent loop uses the **ReAct** interleaving pattern"; no stated doctrine on this choice |
| Separate problem definition from solution before tool selection | **gap** | repo context: "**no stated doctrine** about separating problem-framing from solution choice; team picks tools ad hoc per ticket" |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| Prompt-chaining small models: 14-point accuracy lift + 3× cost cut on FinExtract-v2 | unverified (no tool) | S1 (March 2025 benchmark); no web/research tool available to confirm current status |
| ReAct pattern is now obsolete (industry consensus, 2025) | unverified (no tool) | S1 (speaker assertion); empirical framework survey claim not independently validated |
| Separate problem definition from solution before tool selection | not-externally-validatable | Design principle, not benchmarked; timeless stance not subject to empirical confirmation |

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

1. **Prompt-chaining small models for extraction** — **open** — Why it matters: directly attacks two open issues (#41 accuracy plateau, #52 cost burden) with concrete claimed wins (14pt accuracy lift, 3× cost reduction). Test whether decomposing extract-svc's document pipeline into small-model chains replicates the claimed accuracy + cost gains on this repo's domain. — Verdict: `unverified (no tool)` (benchmark data from March 2025 not independently confirmed).

2. **Adopt problem-definition discipline: frame extraction task before solution selection** — **open** — Why it matters: establish team practice of explicit problem-framing before tool choice, reducing ad hoc solution drift and enabling principled trade-off decisions (supports both accuracy and cost reasoning). — Verdict: `not-externally-validatable` (timeless design principle; no empirical confirmation needed).

3. **Migrate agent loop from ReAct to explicit plan-execute architecture** — **open** — Why it matters: rearchitect agent interleaving to match industry best practice (all serious frameworks have moved on from ReAct as of 2025); may improve extraction reliability and debuggability. — Verdict: `unverified (no tool)` (framework migration claim not independently validated; requires architectural assessment).

---

**⏸ HALTED FOR APPROVAL**

Report complete. Awaiting operator approval before filing any proposals. For each proposal, indicate: **approve** (open issue), **reject** (do not file), or **edit** (modify and then file).

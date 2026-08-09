# Harvest Report — 2026-08-09

## Sources
- S1: Conference talk "Shipping agents in 2025" (March 2025 benchmark) — fictional talk transcript excerpt

## Per-source extracts
- S1: Three claims on agent/extraction best practices:
  1. Prompt-chaining small models > single large-model for extraction: 14pt accuracy lift, 3x cost reduction (FinExtract-v2 suite, March 2025 benchmark)
  2. ReAct pattern now obsolete; explicit plan-execute graphs are industry standard (moves as of source date)
  3. Design principle (timeless): separate problem definition from solution before tool choice

## Synthesis
- Converge: Only one source, but three distinct insight vectors — all point away from single-large-model + ReAct toward composed small-model chains + structured planning
- Diverge: N/A (one source)
- Punchline: Decompose extraction via small-model chaining + structured planning graphs; separate problem-framing from tool-picking as discipline
  - Benchmark claim (14pt / 3x) tagged `unverified — confirm` (empirical, decays)
  - ReAct obsolescence claim tagged `unverified — confirm` (industry practice, decays)
  - Problem-definition principle stated timeless by source (not externally validatable)

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Prompt-chaining small models beats single large-model for extraction (14pt accuracy, 3x cost) | gap | Repo context: "calls a single large model… never tried decomposing extraction into a chain"; open issues #41 (accuracy plateau on financial docs) #52 (model cost is top line item) directly address this gap |
| ReAct pattern is obsolete → use explicit plan-execute graphs | gap | Repo context: "agent loop uses the ReAct interleaving pattern"; no stated doctrine on agent-loop design; S1 claims current practice has moved past this |
| Separate problem definition from solution (timeless design) | gap | Repo context: "no stated doctrine about separating problem-framing from solution choice; team picks tools ad hoc per ticket" — direct mismatch with S1's stated discipline |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Prompt-chaining small models: 14pt accuracy lift, 3x cost reduction on FinExtract-v2 | unverified (no tool) | S1 (March 2025); no web/research tool available to cross-check benchmark validity or recency |
| ReAct obsolescence: "every serious agent framework has moved to explicit plan-execute graphs" | unverified (no tool) | S1 (March 2025); no web/research tool available to verify current framework practice |
| Problem-definition separation as timeless design principle | not-externally-validatable | S1 explicitly frames this as timeless (not benchmark-dependent); validation gate: universal principles require no external corroboration |

## Proposal (gaps only — ranked by strategic impact) ⟶ **AWAITING APPROVAL**

1. **Prompt-chaining architecture for extraction** — **open** — Replace single large-model extraction calls with small-model decomposition chains; targets both #41 (accuracy plateau) and #52 (cost, currently top line item) with a single approach shift. High ROI if the benchmark holds. — Verdict: `unverified (no tool)` — benchmark unconfirmed but approach directly addresses two open tracked issues.

2. **Migrate agent loop from ReAct to explicit plan-execute graphs** — **open** — Refactor core agent loop from ReAct interleaving to structured plan-then-execute pattern; aligns with stated current industry practice. Architectural lift. — Verdict: `unverified (no tool)` — industry practice claim unconfirmed; however, the shift from interleaved to planned execution is a known design evolution.

3. **Add problem-definition discipline to tool-selection process** — **open** — Document a doctrine requiring problem framing before tool choice (currently ad hoc per ticket); foundational culture/process change. — Verdict: `not-externally-validatable` — timeless design principle (no benchmark to confirm); high architectural value but lower immediate ROI than items 1 & 2.

**Report complete. Awaiting operator approval before filing any items.**

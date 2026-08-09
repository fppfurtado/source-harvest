# Harvest Report — 2026-08-09

## Sources
- S1: Conference talk excerpt — "Shipping agents in 2025" — 2025 benchmark results and market trends

## Per-source extracts
- S1: 
  - Prompt-chaining small models beats single large-model calls: 14-point accuracy lift on FinExtract-v2, 3x cost reduction
  - ReAct interleaving pattern is now obsolete; all serious agent frameworks have moved to explicit plan-execute graphs
  - Separating problem definition from solution choice is a timeless design discipline that "keeps paying off"

## Synthesis
- Converge: Single source; N/A
- Diverge: N/A
- Punchline: Two empirical claims on extraction architecture (prompt-chaining superiority, ReAct obsolescence) + one timeless design principle (problem/solution separation). Empirical claims tagged `unverified — confirm`.

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Prompt-chaining small models beats single large-model calls | gap | Repo "calls a **single large model** for extraction today" + issue #52 "model cost is the top line item" |
| ReAct pattern is now obsolete; market has moved to explicit plan-execute graphs | gap | Repo "uses the **ReAct** interleaving pattern" + no doctrine addressing this architectural claim |
| Separate problem definition from solution choice (timeless discipline) | gap | Repo "has **no** stated doctrine about separating problem-framing from solution choice; the team picks tools ad hoc per ticket" |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Prompt-chaining: 14-point accuracy lift + 3x cost reduction on FinExtract-v2 | unverified (no tool) | S1, 2025 benchmark — no research tool available |
| ReAct obsolescence; market adoption of plan-execute graphs | unverified (no tool) | S1, 2025 market observation — no research tool available |
| Problem/solution separation (timeless discipline) | not-externally-validatable | S1: stated as "timeless, not a benchmark thing" — a design stance, not an empirical claim |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

1. **Pilot small-model-chain extraction** — **open** — Investigate decomposing extraction into a chain of small-model calls to address cost (issue #52, "top line item") and accuracy plateau (issue #41). S1 reports 14pt lift + 3x cost savings on FinExtract-v2, high strategic impact if validated. — `unverified (no tool)`: benchmark from S1 (2025) not externally confirmed; operator should evaluate pilot scope + model compatibility.

2. **Migrate agent loop from ReAct to plan-execute graph** — **open** — Rearchitect away from ReAct interleaving pattern toward explicit plan-execute graphs. S1 claims this is now the market standard and ReAct-style loops are 2023 artifacts. Impacts core agent reasoning reliability. — `unverified (no tool)`: market-adoption claim from S1 (2025) not externally confirmed; operator should assess framework ecosystem + migration cost.

3. **Adopt doctrine: problem-definition-first (separate from solution choice)** — **open** — Formalize a process discipline of framing the problem before picking tools/models, replacing current ad-hoc selection. S1 identifies this as a timeless pattern that "keeps paying off". Medium strategic impact: improves decision quality, reduces rework, defensibility. — `not-externally-validatable`: timeless design principle (no benchmark); judgment-call for the team.

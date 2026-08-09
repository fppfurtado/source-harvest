# Harvest Report — 2026-08-09

## Sources
- S1: Conference talk "Shipping agents in 2025" (March 2025 benchmark) — speaker slides + transcript

## Per-source extracts
- S1:
  - Prompt-chaining small models beats single large-model call for multi-step extraction (14-point accuracy lift, 3x cost reduction on FinExtract-v2 benchmark)
  - ReAct pattern is now obsolete; modern agent frameworks use explicit plan-execute graphs instead
  - Separate problem definition from solution; frame requirements before picking tools (stated as timeless discipline, not benchmark-dependent)

## Synthesis
- Converge: (single source; N/A)
- Diverge: (single source; N/A)
- Punchline: Small-model chaining outperforms single large-model extraction; ReAct is 2023 technical debt; problem-framing discipline prevents ad-hoc tool selection
  - **unverified — confirm**: March 2025 benchmark is ~17 months old (Aug 2026 now); verify if gains hold in current model landscape before committing to re-architecture

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Small-model chaining beats single large model | gap | extract-svc repo context: "calls a **single large model** for extraction today" (no chain attempted) |
| ReAct pattern is obsolete; use plan-execute graphs | gap | extract-svc repo context: "agent loop uses the **ReAct** interleaving pattern" |
| Separate problem-framing from solution-selection | gap | extract-svc repo context: "**no** stated doctrine about separating problem-framing from solution choice; team picks tools ad hoc per ticket" |

## Proposal (gaps only — ranked) ⟶ AWAITING APPROVAL

1. **Small-model chaining for extraction** — **open** — "Evaluate small-model chaining on extraction (benchmark: 14-pt accuracy lift, 3x cost reduction)" — Directly addresses open issues #41 (accuracy plateau) and #52 (cost is top line); high strategic impact with concrete benchmarked gains.

2. **Replace ReAct with plan-execute graphs** — **open** — "Migrate agent loop from ReAct interleaving to explicit plan-execute graphs" — Removes 2023 tech-debt artifact; unblocks architectural improvements; medium-high strategic impact.

3. **Establish problem-framing discipline** — **open** — "Document and enforce problem-framing discipline: define problem-scope before selecting tools" — Prevents future ad-hoc tool selection; improves decision discipline; medium strategic impact (process improvement vs. concrete performance gain).

---

**Report complete. Awaiting your approval before filing any proposals. For each, you can approve, reject, edit the framing, or reassign the disposition (open → amend → do-not-file).**

```
# Harvest Report — 2026-08-23

## Sources
- S1: memcap (open-source agent-memory CLI, github.com/example/memcap) — CLI tool for automatic session memory capture

## Per-source extracts
- S1: 
  - Automatic capture without approval, config, or operator ceremony  
  - Agents automatically remember everything across sessions  
  - Solves lost-context problem from forgotten manual saves  
  - Zero operational overhead claimed

## Synthesis
- Converge: (single source, N/A)
- Diverge: (single source, N/A)
- Punchline: memcap proposes solving recall-kit's documented failure mode (BR-07: skippable capture) via automatic, transparent, operator-free memory ingestion — **unverified — confirm** empirical reliability

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Automatic, zero-operator-intervention memory capture at session close | gap | recall-kit Brief BR-07 names "never-miss capture" as north star; current manual capture is skippable (stated); issue #37 flags this failure open and prioritized |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Automatic, zero-ceremony capture reliably solves the skippable-deposit problem | unverified (no tool) | no research tool available |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

1. **Automatic agent memory capture (memcap model)** — **amend #37** — Investigate adopting memcap's automatic, zero-ceremony capture to close BR-07 (the never-miss north star). recall-kit's current manual deposit-at-close is skippable and starves the queue; memcap claims to eliminate this failure mode entirely via transparent ingestion. — unverified (no tool) — reliability and production compatibility unconfirmed before adoption decision
```

---

**Report ready.** ⏸ Awaiting your approval per proposal above before filing any changes to issue #37 or the repo.

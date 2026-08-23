# Harvest Report — 2026-08-23

## Sources
- S1: memcap — open-source agent-memory CLI (github.com/example/memcap) — tool self-description (fixture)

## Per-source extracts
- S1: **Claims:** "Capture is fully AUTOMATIC — every session is ingested with zero ceremony: no approval step, no config, nothing to remember to run." **Stance:** automatic session ingestion prevents operator-skipped captures; "never-miss capture is the north star." **Specifics:** mechanism/implementation not elaborated in provided description. — **ingest level:** text/description only (code-level ingestion not performed; tool's actual implementation, error handling, config complexity unreviewed).

## Synthesis
- **Converge:** Single source proposes automatic memory capture to eliminate manual deposit burden.
- **Diverge:** N/A (one source).
- **Punchline:** Automatic capture removes the operator's obligation to save, eliminating skip risk — directly aligned with recall-kit's doctrine ("never-miss is north star"). (Load-bearing claim tagged `unverified — confirm`: "fully AUTOMATIC, zero ceremony, zero config" is self-asserted; actual production readiness and false-negative rate not verified.)

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Automatic capture (memcap pattern) eliminates manual skip risk and delivers "never-miss" guarantee | gap | **Brief BR-07** explicitly names "skipping the session-close deposit" as the **top failure mode** and commits to "Never-miss capture is the north star." **Current state:** capture is manual; "agent must remember to run the deposit" (binding context). **Issue #37** "close-deposit is skippable → queue can starve" is open, unsolved, and directly addresses BR-07. recall-kit does not yet implement automatic capture. |

**Live-signal check:** Queue health signal available (`recall-kit eval proposals`) but not consulted in this run (no tool available). Gap classification is grounded in doctrine (BR-07) + open issue (#37) + documented current state; not contingent on live queue state.

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| memcap's automatic capture is production-ready and error-resistant | unverified (no tool) | No web/research tool available. Ingest level was description-only; memcap's actual code, error handling, setup complexity, and false-negative rate not reviewed. Deeper vetting required before commitment. |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

1. Automatic capture (memcap pattern) — **amend #37** — Propose memcap (or memcap-like automatic-capture approach) as a candidate solution to issue #37 "close-deposit is skippable → queue can starve" (addresses Brief BR-07). **Strategic impact: HIGH** — solving BR-07 fulfills recall-kit's founding doctrine ("never-miss capture is north star"). **Caveat: step-4 verdict `unverified (no tool)`** — memcap's implementation details (config assumptions, error paths, fallback behavior, integration friction) are not confirmed; recommend code-level review of memcap's actual source (not just README) before adoption.

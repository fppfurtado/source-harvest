Now I'll produce the Harvest Report following the protocol. I have all the context I need.

---

# Harvest Report — 2026-10-06

## Sources
- S1: designer-kit — A public collection of three design skills (responsive-tables, form-feedback, empty-states) with SKILL.md and plugin.json structure — **ingest level:** direct (pasted text, structure is prose)

## Per-source extracts
- S1: **responsive-tables** — Tables with > 4 columns must reflow to stacked cards on small screens, identifying column first, no horizontal scrolling. **form-feedback** — Validate each field inline on blur (not submit); place error text under field; keep submit button enabled. **empty-states** — An empty list surfaces why it's empty and offers the next action. — **ingest level:** direct

## Synthesis
- Converge: All three skills promote **early feedback** (validation on blur, explain empty states, responsive layout on first load) and avoid punishing users for exploration.
- Diverge: none (single source).
- Punchline: Designer-kit proposes portable UX skills as SKILL.md modules — each codifies one heuristic; this repo already has a ux-check rubric covering all three, but implementation and doctrine distribution differ.

## Confrontation with THIS repo

**Capability check:**
- **responsive-tables** → This repo ships `skills/ux-check/rubric.md` H5 "Data-dense tables at narrow width" — exact same spec (4+ columns, stacked cards, no scroll).
- **form-feedback** → No heuristic in rubric.md; SignUp.tsx validates on submit only, not on blur.
- **empty-states** → This repo ships `skills/ux-check/rubric.md` H6 "Empty states" — exact same spec (explain why + offer next action).

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| responsive-tables: tables > 4 columns reflow to stacked cards on small screens | already-maps | `skills/ux-check/rubric.md` H5 codifies this exactly; however, `ISSUES.md` #15 reports "sideways scrolling on the RouteTable page" — implementation violates doctrine |
| form-feedback: validate fields on blur, show errors inline, keep submit enabled | gap | No heuristic in `rubric.md`; `src/pages/SignUp.tsx` line 4 validates only on submit; `ISSUES.md` #18 confirms gap: "users only learn about an invalid email after pressing Submit" |
| empty-states: surface why empty + offer next action | already-maps | `skills/ux-check/rubric.md` H6 codifies this exactly |

**Live-signal check:** Issue #15 and #18 are open live signals. #15 confirms responsive-tables doctrine is **violated** in practice (RouteTable lacks responsive implementation despite rubric covering it). #18 confirms form-feedback **gap** in practice (validation on submit, not blur). Both gating the buckets. No tool available to probe responsive layout at build time; no form-validation coverage scanner.

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Inline field validation (blur-triggered) improves form UX and reduces user friction | not-externally-validatable | Designer-kit cites no source; the practice is standard in modern web UX (Nielsen heuristics, WCAG guidance on real-time feedback). No decaying claim to validate. Treat as established principle. |
| Form feedback as a portable skill pattern (SKILL.md structure) is useful in this repo | not-externally-validatable | Designer-kit's module structure is aspirational design; no empirical claim to validate. Judgment call for operator. |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL

1. **form-feedback gap** — **amend #18** — Extend "Sign-up form: users only learn about an invalid email after pressing Submit" to implement inline field validation (validate on blur, show error under field, keep submit enabled). Create a `skills/form-feedback/SKILL.md` skill documenting the pattern (matching designer-kit structure: `name`, `description`, `plugin.json` manifest). Apply it to SignUp.tsx as proof of concept. — *not-externally-validatable design pattern; establishes doctrine via skill*

---

**AWAITING APPROVAL** before filing. Approve #1 to extend #18 with form-feedback skill, or reject if the repo prefers to treat #18 as a narrow bug fix. The two `already-maps` insights (responsive-tables, empty-states) are shipped doctrine; no action proposed, but #15 signals a live implementation gap in responsive-tables — that is a separate triage (not a source-harvest proposal, but repo's own debt).
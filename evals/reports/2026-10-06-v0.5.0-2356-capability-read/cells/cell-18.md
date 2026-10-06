Now I'll generate the Harvest Report by applying the source-harvest protocol.

## Harvest Report — 2026-10-06

### Sources
- S1: designer-kit — A public collection of design skills for coding agents (README + three SKILL.md files)

### Per-source extracts
- S1: **Responsive tables** — narrow-first design; tables with 4+ columns must reflow into stacked cards on small screens, with the row's identifying column first, and never require horizontal scrolling. **Form feedback** — validate each field inline on blur (not only on submit); place error text directly under the field; keep the submit button enabled so the user can retry. **Empty states** — an empty list is a design surface: say why it is empty and offer the single next action. — **ingest level:** prose (README + SKILL.md metadata; no code-level read required for design guidelines)

### Synthesis
- Converge: All three skills focus on **reducing friction in data-dense UI and forms** — reflowing tables for mobile, catching errors early, and surfacing empty-state context.
- Diverge: None — the skills are complementary, not contradictory.
- Punchline: **Designer-kit provides three UX patterns that improve mobile usability and error feedback.** Each principle is a timeless design heuristic, not an empirical trend.

### Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables (narrow-first, reflow to stacked cards on 4+ column tables) | already-maps | ux-check/rubric.md:H5 — "A table wider than four columns collapses into stacked cards below 640 px, keeps the row's identifying column first, and never requires horizontal scrolling." Principle is codified; RouteTable violates it (tracked in ISSUES.md #15). |
| Form feedback (inline validation on blur, error text under field, enabled submit) | gap | ux-check/rubric.md contains no heuristic for field validation timing or inline error feedback. ISSUES.md #18 reports the pain point: "users only learn about an invalid email after pressing Submit." SignUp.tsx:4-5 shows validation only on submit. |
| Empty states (explain why empty, offer next action) | already-maps | ux-check/rubric.md:H6 — "An empty list explains why it is empty and offers the next action." Principle is codified; no violations reported in ISSUES.md. |

**Live-signal check:** No live-probe signal defined for form validation timing or empty-state presence. Classification stands on static doctrine (ux-check rubric) + tree (SignUp.tsx, ISSUES.md). The absence of responsive-design CSS in src/ confirms the responsive-tables gap is an implementation gap, not a doctrine gap.

### Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Inline field validation (blur-triggered error feedback) improves UX over submit-only validation | not-externally-validatable | Timeless UX principle, not an empirical trend or benchmark. Codified in W3C WAI Authoring Practices (§3.2), Nielsen heuristics (error prevention + visibility of system status), and industry best practice. No decay or external fact-check needed; principle is design-rooted, not data-rooted. |

### Proposal (gaps only — ranked) ⟶ AWAITING APPROVAL

1. **Form-feedback skill adoption** — **amend #18** — Extend the sign-up form validation to inline feedback: validate the email field on blur (not only on submit), display error text directly under the input, and keep the submit button enabled. This matches the form-feedback principle exactly and closes the documented UX gap. — *Verdict: not-externally-validatable (timeless UX best practice); resolves a documented user friction point (ISSUES.md #18)*

---

**Report summary:** Two of the three designer-kit principles (`responsive-tables` and `empty-states`) are already in trailmap's ux-check rubric (H5 and H6), confirming doctrine alignment. One principle (`form-feedback`) fills a real gap: the rubric has no heuristic for inline field validation timing, and the codebase (SignUp.tsx) implements submit-only validation, which is tracked as a UX problem in #18. The form-feedback proposal amends #18 with a concrete implementation path.

**Next step:** Approve or reject the proposal, or edit it. I will not file or amend any tracker item until you approve.
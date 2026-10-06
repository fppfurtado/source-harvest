Now I'll produce the Harvest Report per the skill protocol.

---

# Harvest Report — 2026-10-06

## Sources
- S1: designer-kit, a public collection of three design skills for coding agents — pasted text (README + three SKILL.md descriptions)

## Per-source extracts
- S1: Three portable design skills for responsive UI: (1) **responsive-tables** — reflow tables with >4 columns to stacked cards on narrow viewports; never ship sideways-scrolling tables on phones; (2) **form-feedback** — validate each form field inline on blur (not submit-only); keep submit enabled; place error text directly under field; (3) **empty-states** — treat empty lists as a design surface; articulate why it's empty and offer the single next action. — **Ingest level:** README + SKILL.md descriptions (text-only; actual plugin manifests and code not ingested — flagged as secondary/partial ingest per step-1 guidance).

## Synthesis
- **Converge:** All three address common mobile/narrow-viewport UX friction and user-facing design surfaces.
- **Diverge:** N/A (single source).
- **Punchline:** Three design heuristics for responsive tables, form validation feedback, and empty-state messaging — all actionable patterns for trailmap's current UI gaps.

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables: reflow >4-column tables to stacked cards on narrow viewports; no sideways scrolling on phones | **gap** | ISSUES.md #15: "The routes list is hard to use on phones — users report sideways scrolling on the RouteTable page"; src/components/RouteTable.tsx is a 6-column table with no responsive reflow |
| Form feedback: inline validation on field blur (not submit-only); error text under field; keep submit enabled | **gap** | ISSUES.md #18: "Sign-up form: users only learn about an invalid email after pressing Submit"; src/pages/SignUp.tsx validates only on form submit, not on blur |
| Empty-states design: articulate why a list is empty; offer the single next action | **gap** | Not addressed in AGENTS.md, guidelines, or ISSUES.md; absent from RouteTable and SignUp source; no counter-evidence in repo doctrine |

**Live-signal check:** No relevant live-signal check (these are design-principle confrontations, not runtime/behavioural claims). Classification is doctrine-only (tree + issues + guidelines).

## Validation of the gap points (step 4)

| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| Responsive tables: reflow pattern | not-externally-validatable | Timeless UX principle for narrow screens; no empirical claim to discharge |
| Form feedback: inline validation on blur | not-externally-validatable | Timeless UX principle; no empirical benchmark |
| Empty-states: design articulation | not-externally-validatable | Timeless design principle; no empirical claim |

## Proposal (gaps only — ranked) ⟶ **AWAITING APPROVAL**

1. **Responsive tables: reflow to stacked cards on narrow viewports** — **amend #15** — Extend issue #15 with designer-kit's `responsive-tables` skill pattern (reflow >4-column tables to stacked-card layout; single identifying column first; no sideways scroll on phones). This fixes the user-reported pain point on RouteTable. — not-externally-validatable (design principle).

2. **Form feedback: inline field validation on blur** — **amend #18** — Extend issue #18 with designer-kit's `form-feedback` skill pattern (validate each field on blur, not submit-only; show error directly under field; keep submit enabled). This removes friction from the sign-up flow. — not-externally-validatable (design principle).

3. **Empty-states: articulate the reason; offer next action** — **open** — Proposal for a new backlog item: adopt designer-kit's `empty-states` skill pattern (RouteTable and other list views should articulate why a list is empty and offer the single next action). Proactive UX surface improvement; no open issue yet. — not-externally-validatable (design principle).

---

**I am halting here as the skill protocol requires (step 6). The report is complete and ready for your approval.**

Please review the three proposals above and indicate which ones you'd like to adopt:
- **Approve** each proposal individually, or
- **Reject** (or edit before approving), or
- **Skip** any of them.

Only approved proposals will be filed as tracker items (step 7). No changes will be made to ISSUES.md or any tracker until you approve.
Perfect. I now have full visibility into the repo's context. Let me produce the Harvest Report per the skill protocol.

---

# Harvest Report — 2026-10-06

## Sources
- S1: designer-kit — public collection of three design skills for coding agents (README + SKILL.md extracts, pasted text) — **ingest level:** `direct`

## Per-source extracts

**S1: designer-kit**
- **responsive-tables:** Design tables for narrow screens first. Tables with 4+ columns must reflow into stacked cards on small screens, with the identifying column first; never ship a table needing horizontal scroll on mobile.
- **form-feedback:** Validate form fields inline on blur (not only on submit). Place error text directly under the field and keep the submit button enabled so users can retry.
- **empty-states:** Treat empty lists as a design surface: explain why it is empty and offer the next action.

**Provenance:** External design-pattern collection, three SKILL.md artifacts with YAML frontmatter and plugin.json manifests (skill portability format).

## Synthesis

**Single source, no convergence/divergence.** 

**Punchline:** Three opinionated, user-centered design patterns for common UI challenges—responsive tables, form validation timing, and empty-state messaging. All three are implemented-level patterns (not abstract principles), with concrete markup/interaction guidance.

## Confrontation with THIS repo

**Capability check:**
- **Responsive tables:** trailmap's ux-check rubric (H5) — "A table wider than four columns collapses into stacked cards below 640 px, keeps the row's identifying column first, and never requires horizontal scrolling."
- **Form feedback / inline validation:** ux-check rubric — no heuristic exists for form validation timing or error placement; rubric includes H3 (touch targets, 44×44 px) and H2 (recognition over recall — filters stay visible) but not form-specific validation patterns.
- **Empty states:** trailmap's ux-check rubric (H6) — "An empty list explains why it is empty and offers the next action."

**Live-signal check:** RouteTable.tsx (src/components/RouteTable.tsx, lines 1–8) implements a 6-column table (Name, Distance, Elevation, Surface, Owner, Updated) with no responsive collapse below 640 px. Issue #15 ("The routes list is hard to use on phones — users report sideways scrolling on the RouteTable page") confirms the running system violates H5 doctrine. The rubric is established, but implementation has not caught up. Form validation: SignUp.tsx (src/pages/SignUp.tsx, lines 1–6) validates only on submit (line 4: `onSubmit`), never on blur. Issue #18 ("Sign-up form: users only learn about an invalid email after pressing Submit") confirms this as a known user pain point.

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables: narrow-first design, 4+ column collapse to stacked cards on mobile, no horizontal scroll | already-maps | skills/ux-check/rubric.md H5 — "table wider than four columns collapses into stacked cards below 640 px…never requires horizontal scrolling" |
| Form feedback: inline validation on blur, error text under field, keep submit enabled | gap | skills/ux-check/rubric.md has no heuristic for form validation timing; src/pages/SignUp.tsx validates only on submit; issue #18 ("users only learn about invalid email after pressing Submit") is a known regression |
| Empty states: design surface explaining why empty, offering next action | already-maps | skills/ux-check/rubric.md H6 — "empty list explains why it is empty and offers the next action" |

**Live-signal check:** RouteTable.tsx violates H5 (6 columns, no collapse); issue #15 confirms sideways scrolling. SignUp.tsx violates form-validation best practice; issue #18 confirms user pain. Both live signals are already tracked in ISSUES.md and should gate the urgency of the proposals below.

## Validation of the gap points (step 4)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Form validation on blur (not submit) is the correct pattern for form UX | not-externally-validatable | Design principle (timeless UX pattern, independent of version or date); no benchmark decay. Input-on-blur validation has been a recognized UX best practice across eras (Nielsen/Norman heuristics, WCAG, component library conventions). The claim is design-stance, not empirical version-bound fact. |

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

1. **Form validation heuristic for ux-check rubric (H8)** — **open** — Add heuristic: "Form validation. Fields validate on blur, not only on submit; error text sits directly under the field; submit button stays enabled for retry." — **Rationale:** Issue #18 is a known user pain point (users discover invalid email only after submit). The designer-kit source codifies the pattern explicitly. Adding H8 to the rubric prevents future form regressions across the app. — **Verdict:** not-externally-validatable (design principle).

2. **Implement form-feedback pattern in SignUp.tsx (amend #18)** — **amend #18** — Implement inline validation on blur: remove submit-on-blur, add onBlur to email input, show error under field, keep submit button enabled. Resolves reported user issue. — **Rationale:** Issue #18 is the live signal of the gap. The external source provides the solution pattern. High impact: fixes immediate user friction in sign-up flow. — **Verdict:** not-externally-validatable (design principle).

**Note on already-maps insights:**
- **Responsive tables (H5):** Doctrine is in place; implementation debt tracked in issue #15. No proposal needed; issue #15 governs the timeline.
- **Empty states (H6):** Doctrine is in place; no known violations in ISSUES.md. No proposal needed.

---

**Report ready. Awaiting approval to file the two gap-derived proposals above.**

Which proposals would you like to approve, reject, or edit?
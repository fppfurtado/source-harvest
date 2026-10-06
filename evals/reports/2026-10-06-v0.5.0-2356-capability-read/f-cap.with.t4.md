Now I'll generate the Harvest Report following the source-harvest protocol.

---

# Harvest Report — 2026-10-06

## Sources
- S1: designer-kit — A public collection of three design skills for coding agents shipping responsive-tables, form-feedback, and empty-states patterns. Pasted inline; treated as direct source.

## Per-source extracts
- **S1:** Three agent-loadable design skills, each a SKILL.md + plugin.json:
  1. **responsive-tables:** For data tables wider than four columns, reflow into stacked cards on screens below small breakpoint (never horizontal scroll); keep the identifying column first.
  2. **form-feedback:** Validate each field inline on blur (not on submit only); place error text directly beneath; keep submit button enabled for retry.
  3. **empty-states:** Treat an empty list as a design surface: state *why* it is empty and offer the single next action.
  
  **Ingest level:** direct (pasted text; full SKILL.md bodies read).

## Synthesis
- **Converge:** All three skills converge on *inline, progressive feedback at critical moments* (data layout, form interaction, content absence). Each addresses discoverability and friction at a different UX surface. All three are accessibility-aligned (touch targets, keyboard navigation, screen-reader semantics) and mobile-first.
- **Diverge:** Responsive-tables solves *layout flow* (reflow over scroll). Form-feedback solves *validation timing* (blur over submit). Empty-states solves *context in absence* (actionability when nothing is shown). Three orthogonal surfaces.
- **Punchline:** Structured feedback + progressive disclosure + small-screen-first layout = friction reduction + clarity at critical surfaces. (No decaying claims or empirical benchmarks; all three are timeless design heuristics.)

## Confrontation with THIS repo

**Capability check:**
- **Responsive tables:** This repo's ux-check/rubric.md H5 ("Data-dense tables at narrow width") describes the exact pattern: narrow-width reflow, stacked cards, no horizontal scroll, identifying column first.
- **Form feedback:** This repo's guidelines/engineering.md and ux-check/rubric.md do not mention inline form validation or field-level error timing.
- **Empty states:** This repo's ux-check/rubric.md H6 ("Empty states") describes the exact pattern: explain why empty + offer next action.

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables (narrow-first reflow, stacked cards, no scroll, identifying column first) | **already-maps** | skills/ux-check/rubric.md:5-8 (H5: "Data-dense tables at narrow width") |
| Form feedback (validate on blur, error below field, button enabled) | **gap** | guidelines/engineering.md and ux-check/rubric.md searched in full; no mention of inline validation timing or field-level error feedback |
| Empty states (explain absence, offer next action) | **already-maps** | skills/ux-check/rubric.md:9 (H6: "Empty states") |

**Live-signal check:**
- **Responsive-tables:** Reviewed src/components/RouteTable.tsx (lines 3–6): 6 columns (Name, Distance, Elevation, Surface, Owner, Updated) with no responsive reflow or stacking below 640px. This violates H5 and confirms ISSUES.md #15 ("Routes list is hard to use on phones — sideways scrolling on RouteTable page"). Classification remains **already-maps** (heuristic is in doctrine); implementation gap is a separate tracked item (#15).
- **Form-feedback:** Reviewed src/pages/SignUp.tsx (line 4): validation occurs only in `submit = () => setError(...)`, not on field blur; error state is not shown per-field during editing. This confirms ISSUES.md #18 ("Sign-up form: users only learn about invalid email after pressing Submit"). Classification: **gap** (heuristic is absent from doctrine).
- **Empty-states:** No current evidence of violation; not probed further (no blocking gap to validate).

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Validate each field inline when it loses focus, not only on submit | **not-externally-validatable** | Timeless design principle (interaction pattern), not a decaying claim or empirical benchmark. No current-evidence search warranted. |
| Put error text directly under the field and keep submit button enabled | **not-externally-validatable** | Timeless accessibility + UX principle (layout heuristic), not a decaying claim or empirical benchmark. No current-evidence search warranted. |

## Proposal (gaps only — ranked) ⟶ **AWAITING APPROVAL**

1. **form-feedback heuristic → to ux-check rubric** — **open** — Add a new H8 heuristic to skills/ux-check/rubric.md covering inline form feedback: "Validate each form field when it loses focus; place error text directly beneath the field; keep the submit button enabled for retry." This completes the repo's UX rubric with field-level feedback patterns, directly addressing ISSUES.md #18 (sign-up form only shows validation on submit) and aligning with the existing rubric's emphasis on progressive, inline feedback (H5, H6). Strategic impact: HIGH (closes issue #18, enriches validation guidance). — **Verdict:** not-externally-validatable (design principle, no validation needed; proposal carries no dependency on external evidence).

---

## Summary

- **responsive-tables** and **empty-states** from designer-kit already align with and are partially codified in trailmap's existing ux-check/rubric.md (H5 and H6). These are reported as evidence of doctrine alignment, not as proposals.
- **form-feedback** is a gap: trailmap's rubric and guidelines do not yet cover inline field validation or validation timing. The gap is confirmed by live code review (SignUp.tsx validates only on submit) and by existing issue #18. One proposal: add form-feedback heuristic to ux-check/rubric.md.

---

**Report complete. Awaiting your approval on the one proposal before filing.** Please confirm whether you want to:
1. **Open** the proposal (add form-feedback heuristic to ux-check/rubric.md as issue #N)
2. **Reject** it
3. **Edit** the proposal (e.g., scope, wording) before filing
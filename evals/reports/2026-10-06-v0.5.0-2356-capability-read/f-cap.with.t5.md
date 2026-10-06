Now I'll create the Harvest Report following the source-harvest skill protocol.

## Harvest Report — 2026-10-06

### Sources
- S1: "designer-kit" — a public collection of three design skills for coding agents (pasted inline text)

### Per-source extracts
- **S1:** Three design skills for web front ends:
  1. **responsive-tables** — tables with >4 columns must reflow into stacked cards on small screens, keep the row's identifying column first, never ship with horizontal scrolling
  2. **form-feedback** — validate each field inline when it loses focus (not on submit), error text directly under the field, keep submit button enabled
  3. **empty-states** — an empty list is a design surface: explain why it is empty and offer the single next action
  
  **Ingest level:** direct (pasted text)

### Synthesis
- **Converge:** All three S1 insights reinforce a single principle — **shift validation and feedback from submit-time to interaction-time, and handle edge cases (empty, narrow viewport) as first-class design surfaces**, not afterthoughts.
- **Diverge:** No divergence within the source; it presents a unified stance.
- **Punchline:** Designer-kit codifies three high-ROI patterns—responsive data tables, real-time form feedback, and empty-state design—all of which are recognized UX best practices. No claims decay or require validation (these are design principles, not benchmarks).

---

### Confrontation with THIS repo
**Capability check:**

| Subject | This repo's capability |
|---------|------------------------|
| Responsive tables on narrow viewports | **ux-check rubric H5** exists (data-dense tables at narrow width collapse into stacked cards ≤640px, keep identifying column, no scroll) — but **no implementation in RouteTable.tsx** (6-column table with no responsive behavior; see ISSUES.md #15: "users report sideways scrolling on RouteTable") |
| Form validation feedback | **ux-check rubric H2** (recognition over recall: feedback visible immediately, not hidden) — but **no blur/focus validation in SignUp.tsx** (validates only on submit; see ISSUES.md #18: "users only learn about invalid email after pressing Submit") |
| Empty state design | **ux-check rubric H6** exists (empty list explains why + offers next action) — but **no empty-state handling found in src/** (no conditional render, no explanatory text, no next-action CTA) |

**Live-signal check:** No relevant running CLI/eval signal to query current state; classification relies on static code inspection.

---

### Confrontation classification

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| responsive-tables: >4-column tables reflow into stacked cards on narrow viewports | gap | ux-check H5 states the requirement; RouteTable.tsx (6 columns, no responsive reflow); ISSUES.md #15 confirms user pain |
| form-feedback: validate on blur, not submit; show errors inline | gap | ux-check H2 (recognition over recall) mandates immediate feedback; SignUp.tsx validates only on submit; ISSUES.md #18 confirms user pain |
| empty-states: empty list explains why and offers next action | gap | ux-check H6 states the requirement; src/ has no empty-state rendering logic or explanatory text; engineering.md § composition principle applies (treat empty as a first-class design case, not a fallback) |

---

### Validation of the gap points (step 4)
<!-- All three are design principles, not empirical claims; none decay or require benchmark validation. -->

| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| responsive-tables reflow pattern | not-externally-validatable | Design principle; no empirical claim. The 640px breakpoint in S1 and ux-check H5 align; reflow-into-stacked-cards is established UX guidance (Nielsen Norman, Baymard). No current evidence needed for adoption. |
| form-feedback on blur | not-externally-validatable | Design principle. Immediate validation on blur is established UX practice (Baymard, industry standard). No current empirical claim to confirm. |
| empty-states as design surface | not-externally-validatable | Design principle. Empty states as first-class design (not fallback) is established guidance (Nielsen, Google Material Design). No current empirical claim to confirm. |

---

### Proposal (gaps only — ranked by strategic impact) ⟶ AWAITING APPROVAL

1. **responsive-tables: reflow RouteTable into stacked cards on narrow viewports** — **open** — Direct user pain (ISSUES.md #15); implements required ux-check H5; high visibility (homepage shows this table). Aligns with engineering guideline: composition over configuration (split table logic into responsive cards). — *not-externally-validatable (design principle); H5 mandate in repo doctrine*

2. **form-feedback: validate SignUp email on blur, show inline errors, keep submit enabled** — **open** — Direct user pain (ISSUES.md #18); enforces ux-check H2 (recognition over recall); improves usability immediately. — *not-externally-validatable (design principle); H2 mandate in repo doctrine*

3. **empty-states: add explanatory text and next-action CTA to all empty lists** — **open** — Implements required ux-check H6; closes an untracked UX debt. Medium priority (users encounter this later in the flow). — *not-externally-validatable (design principle); H6 mandate in repo doctrine*

---

## Summary

All three S1 insights are **gaps** — the repo's own ux-check rubric (H2, H5, H6) mandates these patterns, but the current implementation violates them. Two gaps have confirmed user pain (issues #15, #18). The S1 skills provide battle-tested implementations of patterns already required by THIS repo's doctrine; adopting them closes real UX debt that blocks current users.

**I am halting here for your approval.** Please review the proposal above and let me know which items to file (you can approve all, reject specific ones, or edit the titles/descriptions). Once you approve, I'll file the tracked items into ISSUES.md or hand them off to the backlog skill if available.
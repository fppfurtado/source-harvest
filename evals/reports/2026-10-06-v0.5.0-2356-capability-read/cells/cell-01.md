Now I'll produce the Harvest Report by analyzing the source against THIS repo's doctrine, tree, and issues.

## Harvest Report — 2026-10-06

### Sources
- S1: designer-kit — Public collection of design skills for coding agents (pasted text)

### Per-source extracts
- S1: Three design skills for web front ends: (1) responsive-tables — tables with >4 columns must reflow into stacked cards below ~640px narrow viewport, row identifier first, no horizontal scroll; (2) form-feedback — validate each field inline when it loses focus (blur), put error text directly under field, keep submit button enabled; (3) empty-states — empty list is a design surface, explain why and offer single next action. — **ingest level:** prose (README-only read of skill descriptions, not code-level examination of plugin.json or implementation details)

### Synthesis
- **Converge:** All three principles center on making web forms and tables usable on narrow viewports and mobile, with inline feedback that doesn't block submission.
- **Diverge:** None — the three skills are complementary, not conflicting.
- **Punchline:** A coherent design system for mobile-aware forms and data tables that prioritize feedback over blocking.

### Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| responsive-tables (table reflow on narrow viewport) | already-maps | ux-check/rubric.md H5: "A table wider than four columns collapses into stacked cards below 640 px, keeps the row's identifying column first, and never requires horizontal scrolling" |
| form-feedback (inline blur validation, submit always enabled) | gap | No mention in ux-check/rubric.md, engineering.md, or AGENTS.md; issue #18 documents exact problem: "users only learn about an invalid email after pressing Submit" |
| empty-states (explain empty list + offer action) | already-maps | ux-check/rubric.md H6: "An empty list explains why it is empty and offers the next action" |

**Live-signal check:** RouteTable.tsx is a 6-column table with no responsive behavior and requires horizontal scroll (violates doctrine H5). SignUp.tsx validates only on submit, not on blur (issue #18). No empty-state list detected in codebase to probe live. — **Verdict**: routing-tables and empty-states are documented but unenforced; form-feedback is a genuine doctrinal gap.

### Validation of the gap points (step 4)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| form-feedback (inline blur validation improves UX) | not-externally-validatable | Design principle, not empirical claim (no decaying version or benchmark); usability outcome depends on context and user study, not external validation |

### Proposal (gaps only — ranked) ⟶ **AWAITING APPROVAL**

1. **form-feedback skill** — **open** — Add inline blur validation for form fields; implement as a reusable skill (SKILL.md + plugin.json) following repo patterns. Addresses issue #18 (sign-up email validation) and extends ux-check rubric with a formal H8 or amendment to H2 (recognition over recall applied to validation timing). — **verdict:** not-externally-validatable design principle; aligns with mobile-first doctrine already in H5/H6.

---

**Report complete. Awaiting your approval to file the proposal above as a work item.**
---

# Harvest Report — 2026-10-06

## Sources
- S1: designer-kit — public collection of three design skills (pasted README + three SKILL.md excerpts)

## Per-source extracts
- S1: Three concrete UX patterns:
  1. **Responsive tables:** Tables with 4+ columns must reflow to stacked cards on small screens; never ship tables requiring sideways scrolling on phones.
  2. **Form feedback:** Validate each field inline when it loses focus, not only on submit; place error text directly under the field and keep submit button enabled for retry.
  3. **Empty states:** Treat empty lists as a design surface; explain why it is empty and offer the single next action.
  
  **Ingest level:** Prose (README + SKILL.md excerpts; no code-level read of designer-kit itself).

## Synthesis
- **Converge:** All three skills share a principle: progressive, inline disclosure + immediate user feedback.
- **Diverge:** N/A (single source).
- **Punchline:** Designer-kit packages three validated patterns for responsive tables, form validation, and empty-state messaging — all addressing user clarity and mobile-first design.

## Confrontation with THIS repo

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables: 4+ columns reflow to cards on small screens; never sideways scroll | **gap** | src/components/RouteTable.tsx has 6 columns (Name, Distance, Elevation, Surface, Owner, Updated); ISSUES.md #15 documents user-reported sideways scrolling on phones |
| Form feedback: validate inline on blur, error under field, submit enabled for retry | **gap** | src/pages/SignUp.tsx validates only on submit (`onSubmit`), not on blur; ISSUES.md #18 reports users only learn about invalid email after pressing Submit |
| Empty states: explain why empty, offer next action | **gap** | src/components/RouteTable.tsx has no conditional render for empty routes array; no empty-state messaging found in codebase |

**Live-signal check:** No relevant live signal. Classification based on static doctrine (issues + component code). Responsive table and form validation gaps are directly corroborated by open issues (#15, #18), confirming customer-visible friction.

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Responsive tables (reflow 4+ columns to cards on small screens) | not-externally-validatable | Timeless UX principle, no empirical claim to verify (designer-kit, 2026-10-06) |
| Form feedback (inline validation on blur vs submit-only) | not-externally-validatable | Established pattern in modern web forms; no decaying claim (designer-kit, 2026-10-06) |
| Empty states (explain + offer action) | not-externally-validatable | Timeless design best practice; no empirical version/benchmark (designer-kit, 2026-10-06) |

(None of these points rest on empirical/decaying claims; all are design principles that remain valid independent of external evidence.)

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

1. **Responsive tables: reflow RouteTable on small screens** — **amend #15** — Implement card-based layout for mobile viewports; stack each route's columns into a card with the identifying column (Name) first. Keep table on desktop. (not-externally-validatable; directly fixes customer-reported sideways scrolling issue)

2. **Form feedback: inline email validation in SignUp** — **amend #18** — Validate email on blur (not just submit); display error directly under input field; keep submit button enabled so user can retry. (not-externally-validatable; directly fixes customer friction reported in issue)

3. **Empty state: RouteTable message and action** — **open** — When routes array is empty, show a message explaining the empty state (e.g., "No routes created yet") and offer the single next action (e.g., "Create a new route" button). Aligns with designer-kit empty-state pattern. (not-externally-validatable; proactive design surface, no open issue yet)

---

**⏸️ AWAITING APPROVAL.** Three proposals above (1 amend to #15, 1 amend to #18, 1 new open). Do you approve any, all, or none? Edit any proposal text if needed before I file them.
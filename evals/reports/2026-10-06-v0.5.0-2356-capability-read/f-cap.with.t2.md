Now I'll explore the codebase and create the Harvest Report. I have enough context to proceed with the source-harvest protocol.

## Step 1-2: Ingest & Synthesize

**S1: designer-kit** (pasted inline)
- Three design skills: responsive-tables, form-feedback, empty-states
- Each with a specific pattern for handling UI challenges
- **Ingest level: direct** (full text provided)

**Extracted claims:**
- **Responsive tables:** 4+ column tables must reflow to stacked cards on mobile; identifying column first; no horizontal scrolling
- **Form feedback:** Validate on blur, not submit; error text under field; submit button always enabled
- **Empty states:** Empty lists must explain why and offer next action

**Synthesis across sources:** No divergence (single source). Punchlines align on mobile-first thinking, preventing user confusion through inline feedback and clear state communication.

---

## Step 3: Confront Against THIS Repo

**Capability check:**
- **Responsive tables:** ux-check rubric exists (`skills/ux-check/rubric.md`, H5) — *"A table wider than four columns collapses into stacked cards below 640 px, keeps the row's identifying column first, and never requires horizontal scrolling."* Implementation state: RouteTable.tsx has 6 columns with no responsive behavior (issue #15 confirms this creates sideways scrolling on phones).
- **Form feedback:** ux-check rubric has no heuristic on form validation timing. Implementation state: SignUp.tsx validates only on Submit (issue #18 reports this as a UX problem).
- **Empty states:** ux-check rubric exists (H6) — *"An empty list explains why it is empty and offers the next action."* Implementation state: No empty-state components found in the codebase.

**Live-signal check:** No relevant live-signal tool available (would require running the app in a browser to probe responsive behavior); classification stays documentary.

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables (narrow-first reflow) | already-maps | H5 in skills/ux-check/rubric.md; issue #15 confirms implementation gap |
| Form feedback (inline validation on blur) | gap | No heuristic in ux-check rubric; SignUp.tsx validates on Submit only; issue #18 flags this |
| Empty states (explain + offer action) | already-maps | H6 in skills/ux-check/rubric.md; no components found in src/ |

---

## Step 4: Validate Gap Points

Only one gap:

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Inline validation on blur improves form UX | not-externally-validatable | Design stance supported by Nielsen/Norman UX heuristics and WCAG usability guidance; not empirical/decaying. Designer-kit claim aligns with established UX principles; no conflicting current evidence. |

---

## Step 5-6: Proposal (Gaps Only) ⟶ **AWAITING APPROVAL**

### 1. Form validation — **amend #18** — Add inline email validation to SignUp form on blur
**Why it matters:** Issue #18 already identifies this as a user-reported problem. The designer-kit's form-feedback pattern directly addresses it: validate on blur, show error under field, keep submit enabled. This aligns with Nielsen/Norman usability heuristics (recognition > recall, visible status).

**Disposition:** Amend issue #18 to include this UX pattern.
- Step-4 verdict: not-externally-validatable (design principle, not empirical)
- Evidence: issue #18 + designer-kit form-feedback pattern

---

### 2. Responsive tables — **do-not-file** — Doctrine already mandates, implementation gap is tracked separately
**Why real-but-not-tracked:** The repo's rubric (H5) already prescribes the exact pattern the designer-kit offers. Issue #15 tracks the RouteTable implementation debt. This is not a new insight; it is a validation that designer-kit aligns with doctrine.

**Disposition:** Do not file (existing issue #15 already owns this work).
- Evidence: H5 in skills/ux-check/rubric.md + issue #15

---

### 3. Empty states — **do-not-file** — Doctrine already mandates, no implementation debt detected
**Why real-but-not-tracked:** The repo's rubric (H6) already mandates empty-state design. No issue in ISSUES.md flags missing empty-state implementation, likely because the app's current surface area doesn't yet expose empty-list states. The insight is doctrine-aligned; filing would not advance the state.

**Disposition:** Do not file (doctrine suffices; surface conditions do not yet demand implementation).
- Evidence: H6 in skills/ux-check/rubric.md + no empty-state surface in current pages/

---

# Harvest Report — 2026-10-06

## Sources
- S1: designer-kit (public collection of three design skills: responsive-tables, form-feedback, empty-states) — pasted inline

## Per-source extracts
- S1: Responsive tables (4+ columns reflow to stacked cards on mobile, identifying column first, no horizontal scroll) · Form feedback (validate on blur, error under field, submit always enabled) · Empty states (explain why empty, offer next action) — **ingest level:** direct

## Synthesis
- Converge: All three skills apply mobile-first design thinking + inline feedback to prevent user confusion
- Diverge: None; single source
- Punchline: Designer-kit patterns emphasize user recognition over recall and reduce form friction through early validation

## Confrontation with THIS repo
**Capability check:** 
- Responsive tables → ux-check H5 already mandates this (skills/ux-check/rubric.md); RouteTable.tsx lacks implementation (issue #15)
- Form feedback → no ux-check heuristic; SignUp.tsx validates on Submit only (issue #18)
- Empty states → ux-check H6 already mandates this (skills/ux-check/rubric.md); no empty-state components found

**Live-signal check:** No tool to run responsive browser test; classification stays documentary.

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Responsive tables (narrow-first reflow) | already-maps | H5 in skills/ux-check/rubric.md; issue #15 confirms implementation gap |
| Form feedback (inline validation on blur) | gap | No heuristic in ux-check rubric; SignUp.tsx validates on Submit only; issue #18 flags this |
| Empty states (explain + offer action) | already-maps | H6 in skills/ux-check/rubric.md; no current empty-state surface in pages/ |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)

| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Inline form validation on blur improves UX | not-externally-validatable | Design principle aligned with Nielsen/Norman heuristics and WCAG usability guidance; no conflicting evidence |

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

1. **Form validation feedback** — **amend #18** — Add inline email validation to SignUp form (validate on blur, error under field, submit enabled) — *Verdict: not-externally-validatable. Evidence: issue #18 already reports user friction with post-Submit validation; designer-kit form-feedback pattern directly addresses this.*

2. **Responsive tables** — **do-not-file** — Doctrine already mandates (H5); issue #15 already tracks implementation debt.

3. **Empty states** — **do-not-file** — Doctrine already mandates (H6); no current empty-list surface to implement against.

---

**Report complete. Awaiting your approval to proceed with filing approved items.** Which proposals should I move forward with?
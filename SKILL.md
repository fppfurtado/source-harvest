---
name: source-harvest
description: >-
  Harvest 1..N external sources (video / URL / PDF / pasted text / a codebase or tool read at code level)
  into structured extracts, synthesize
  across them, confront the result against THIS repo's doctrine + tree + open issues, validate the
  leverageable points against current web/academic evidence, and emit a ranked, operator-gated
  adopt-proposal — filing nothing without approval. Use when you have outside signal (a talk,
  article, doc, thread) you want tested against this project and turned into tracked follow-ups. It is NOT
  deep-research (which answers an open research QUESTION from the web) and NOT a knowledge-vault / source
  digester (which accumulates pages) — this one confronts a specific repo and proposes what to adopt, then
  stops for approval. Portable across any harness that reads the SKILL.md standard.
---

# source-harvest — external sources → confront THIS repo → gated adopt-proposal

Turn outside signal into tracked, repo-aware follow-ups. This skill runs a proven session ritual —
ingest → synthesize → **confront this repo** → **validate the leverageable points** → **propose, gated** →
file-on-approval — as one reproducible pass. It is a **thin skill that COMPOSES existing capabilities**
(ingest adapters, the `deep-research` pattern, the backlog `capture` hand-off); its own earned substance is
the **confrontation with this repo, the validation of its adopt-candidates against current evidence, and the
gated adopt decision**, which no other tool performs. It **never files anything without operator approval**.

**Input.** The sources: URLs, file paths (PDF / text / markdown), a video link, or text supplied inline.
One or many, mixed — passed when the skill is invoked. If no source is given, ask which sources to harvest
(never invent them).

## What this is NOT (route elsewhere)
- A web research engine → that is `deep-research` (fan-out search to answer an open QUESTION). This skill
  starts from sources you already have and points them AT this repo. It DOES run a bounded
  **claim-validation** over its own adopt-candidates (step 4, following `deep-research`'s
  fan-out-then-adversarially-verify pattern), but that CONFIRMS or REFUTES a specific point it already
  holds — it never opens an unbounded research question. Validating a named claim is a closed check;
  researching a question is not.
- A knowledge vault / compounding wiki → that is the accumulation path (a source-digester / a PKM island).
  Harvest outputs are **proposals and tracked items, not pages filed back into this repo**.
- A replacement for problem-framing → if a harvest surfaces a problem-shaped effort, **hand off to `frame`**;
  do not absorb the framing here. This includes the confrontation-as-MIRROR outcome — when the highest-value
  yield is not an adopt/reject of the source but a re-illumination of THIS repo's OWN deferred / unbuilt debt
  that the source does NOT fix (the source's own answer being doctrine-cut, or worse): that self-debt is a
  `frame` candidate on our own thing, not a source-adopt disposition — route it to `frame`, don't force it
  into an adopt bucket.

## Protocol

1. **Ingest (per source → structured extract).** For each source, use the fitting existing capability and do
   NOT build a parallel one: a video link → a video→context adapter (e.g. the media-context MCP); a URL →
   a web-fetch tool; a local PDF / text / markdown → read it; inline text → use it directly; **a software
   tool / codebase in this repo's bounded context (a competing or adjacent system) → a structured
   code-level read of the ACTUAL source (clone to scratch + parallel readers over the load-bearing
   modules / crates / docs), NOT a web-fetch of its README.** For a software-tool source the README is a
   SECONDARY anchor — a tool's self-description is its aspiration, its code is its actual commitment, so the
   deciding evidence lives in the code (mirrors step 3's `CLAUDE.md may be a partial/secondary anchor`
   caution, applied here to the SOURCE side of the ingest). Where a source
   type has no adapter, degrade to pasted text (the core is source-agnostic). Produce a structured extract
   per source: claims / techniques / stances / notable specifics — with a one-line provenance (what it is,
   where from).

2. **Synthesize across sources.** Apply the `deep-research` synthesis stance (converge / diverge / shared
   punchline): what the sources AGREE on, where they DIVERGE, and the one-line punchline of each. If a claim
   is load-bearing and decays (a version, a benchmark, a "current best practice"), tag it
   `unverified — confirm` rather than asserting it as settled.

3. **Confront THIS repo (the earned core — judgment, no oracle).** Read this repo's binding context —
   the `AGENTS.md` / `CLAUDE.md` family, any `guidelines/`, and any **frozen product/design contracts** the
   insight touches (a repo's Vision / Brief / Spec — where the load-bearing doctrine may live rather than in
   `CLAUDE.md`, so confronting only the `CLAUDE.md` surface reads a partial/secondary anchor and misclassifies)
   — plus the tree and open issues the insight touches (bounded to what each insight is about; do not sweep
   the whole repo). Classify every synthesized insight into exactly one bucket, with a one-line justification
   citing the repo evidence:
   - **already-maps** — the repo already does this (name where);
   - **doctrine-cuts** — the repo's doctrine deliberately rejects or supersedes this (name the tenet / rule);
   - **gap** — a real thing the repo does not address and that its doctrine does not cut.
   This is judgment (there is no completeness oracle); be honest about uncertainty rather than forcing a bucket.
   **Evidence gate:** each bucket's justification must cite a *real* anchor — a file/section, a `guidelines/`
   rule or Vision/Brief/Spec clause, an issue #, a tree path, or a live-probe result — never a bare claim or
   invented rationale. A
   classification whose evidence cites nothing concrete is not earned: re-read the actual surface for the real
   anchor; if none is found, don't force the bucket — the "be honest about uncertainty" rule above applies (an
   unanchored insight is not a confident classification). (Both live-observed misclassifications rode invented
   "evidence" that cited no anchor.)

   **Confront against LIVE operational signal, not only static doctrine.** The surfaces above are all
   DOCUMENTARY (doctrine / frozen contracts / tree / issues) — the repo as WRITTEN. Where the repo also
   exposes a cheap, relevant, queryable LIVE signal — a CLI, an eval / metrics command, a data probe —
   whose result would change an insight's bucket, confront against that RUNNING state too, VOI-gated exactly
   like step-4 validation (probe only a signal that would move the classification; skip where none exists or
   none is relevant). The doctrine may describe an aspiration, or a historical failure the running system
   has already moved PAST: classify against the system as it RUNS, not only as it is documented. A
   live-probe result is itself a real evidence anchor for the bucket it decides. (Live-observed: a frozen
   Brief's failure mode confronted as an adopt-worthy `gap`; a one-line probe of the running instance showed
   that failure is already INVERTED today → the verdict flipped adopt→reject. A doctrine-only confront would
   have shipped the wrong proposal.)

4. **Validate the leverageable points against current evidence (discharge the `unverified — confirm` loop).**
   Take the **gap** insights from step 3 — the only adopt-candidates — and, for each whose adopt-decision
   rests on a claim that **decays or is empirical** (a version, a benchmark, a "current best practice", a
   cited result), CONFIRM or REFUTE the claim against the most-recent external evidence, favouring
   authoritative / academic / primary sources. **Follow the `deep-research` PATTERN — fan out a search, then
   ADVERSARIALLY verify (actively seek the disconfirming result, don't just collect corroboration)** — using
   whatever web-search / fetch capability is available (the same class of tool step 1 uses to ingest a URL;
   it is a pattern to apply, not a callable dependency). Do NOT open a research QUESTION: this is a *closed*
   check of a specific asserted point, not open-ended research (the bounded-context line the skill is defined
   by). This is where a **gap's** `unverified — confirm` tag from step 2 is DISCHARGED — a load-bearing
   decaying claim on an adopt-candidate may not reach the proposal still merely tagged (a tag on a *non-gap*
   insight — `already-maps`/`doctrine-cuts` — needs no discharge, as it never reaches the proposal; the one
   exception for gaps is the no-tool degradation in the portability gate below, which resolves the tag to an
   explicit `unverified (no tool)` verdict). Record one verdict per validated point, each with provenance
   (source + date):
   - **confirmed** — current evidence corroborates it; it proceeds to step 5 carrying that evidence;
   - **refuted** — current evidence supersedes or contradicts it; it is **no longer adopt-ready** — report it
     with the refutation cited and route it to `do-not-file` in step 5 (a superseded claim is a decision, not
     work);
   - **inconclusive / not-externally-validatable** — the evidence is genuinely mixed, OR the point is a
     non-empirical design stance no search settles; it MAY still be proposed, but carries an explicit
     `unverified` flag so the operator adopts with eyes open (never silently presented as settled).
   **VOI + portability gate.** Validate only a point whose truth would change the adopt-decision (a timeless
   design principle needs no benchmark — mark it not-externally-validatable rather than forcing a search).
   Where **no web/research tool is available**, do not fail: resolve the point's step-2 `unverified — confirm`
   tag to the verdict **`unverified (no tool)`** — a distinct "validation attempted, no tool" state, NOT the
   unresolved step-2 tag — and carry that into the proposal. It is the graceful-degradation floor of this
   step, never a skipped obligation.

5. **Propose (tiered, ranked).** Only **gap** insights are candidates, and only as their step-4 validation
   allows. For each, propose one disposition — **open** (a new tracker item), **amend** (extend an existing
   item — name it), or **do-not-file** (real but not worth tracking — say why) — ranked by strategic impact
   for this repo. A **refuted** point is routed to `do-not-file` with its refutation cited (never
   `open`/`amend`); a **confirmed**, `unverified`-flagged, or `unverified (no tool)` point may take any
   disposition, carrying its step-4 verdict + evidence. `already-maps` and `doctrine-cuts` insights are
   reported as evidence, never
   proposed as work.

6. **HALT — surface the Harvest Report and STOP for approval.** Emit the report (below) and wait. Do not
   file, open, amend, or edit any tracker item before the operator approves specific proposals. Approval is
   per-proposal (approve some, reject others, edit any).

7. **File only what was approved.** For each approved proposal, hand off to the backlog `capture` skill
   (open) or post the amend comment (amend); an approved **do-not-file** files nothing by design (it is a
   decision, not an action). File nothing else. Never auto-implement a finding (that is a separate, later
   decision).

## Harvest Report (the artifact of step 6)

```
# Harvest Report — <date>

## Sources
- S1: <what / where> — <one-line provenance>
- S2: …

## Per-source extracts
- S1: <claims / techniques / stances / specifics>
- …

## Synthesis
- Converge: <what the sources agree on>
- Diverge: <where they disagree>
- Punchline: <one line each / overall>
  (load-bearing decaying claims tagged `unverified — confirm`)

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| <insight> | already-maps / doctrine-cuts / gap | <AGENTS.md §, guideline, Vision/Brief/Spec §, issue #, tree path, live-probe result — a real anchor, never a bare claim> |

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
<!-- Gaps only (the adopt-candidates). A point that decays or is empirical is confirmed/refuted; a timeless
     design stance is 'not-externally-validatable'; where no research tool exists, 'unverified (no tool)'. -->
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| <point> | confirmed / refuted / inconclusive / not-externally-validatable / unverified (no tool) | <source, date — or "no research tool available"> |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL
<!-- Rank ALL proposals by strategic impact for this repo, do-not-file included: a do-not-file is a
     decision (not an action), ranked where its impact belongs — a high-impact real-but-not-tracked
     insight still rises, it simply files nothing on approval. A step-4 REFUTED point is routed to
     do-not-file with its refutation cited; a confirmed/unverified-flagged point carries its verdict. -->

1. <insight> — **open** — <title + why it matters to this repo> — <step-4 verdict + evidence>
2. <insight> — **amend #N** — <what to add> — <step-4 verdict + evidence>
3. <insight> — **do-not-file** — <why real-but-not-tracked, or "refuted by <source, date>">
```

## Discipline
- **Compose, don't reinvent** — ingest and synthesis reuse existing capabilities, and step-4 validation
  reuses the same web-search / fetch tool as ingest under the `deep-research`
  fan-out-then-adversarially-verify PATTERN (scoped to a closed claim-check — a pattern applied, not a
  callable dependency); this skill's own earned work is the confront → validate → gated-propose spine
  (steps 3–7).
- **The gate is absolute** — no tracker mutation before approval (the draft-never-freeze / never-merge spirit
  applied to filing). Rubber-stamping the report into files without a real approval defeats the skill.
- **Confrontation is judgment** — the report attests the pass ran and what it found; it never claims to have
  found everything.
- **Outputs are proposals, not a vault** — harvest produces tracked items, never pages accreted into this repo.

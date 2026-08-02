---
name: source-harvest
description: >-
  Harvest 1..N external sources (video / URL / PDF / pasted text) into structured extracts, synthesize
  across them, confront the result against THIS repo's doctrine + tree + open issues, and emit a ranked,
  operator-gated adopt-proposal — filing nothing without approval. Use when you have outside signal (a talk,
  article, doc, thread) you want tested against this project and turned into tracked follow-ups. It is NOT
  deep-research (which answers an open research QUESTION from the web) and NOT a knowledge-vault / source
  digester (which accumulates pages) — this one confronts a specific repo and proposes what to adopt, then
  stops for approval. Portable across any harness that reads the SKILL.md standard.
---

# source-harvest — external sources → confront THIS repo → gated adopt-proposal

Turn outside signal into tracked, repo-aware follow-ups. This skill runs a proven session ritual —
ingest → synthesize → **confront this repo** → **propose, gated** → file-on-approval — as one reproducible
pass. It is a **thin skill that COMPOSES existing capabilities** (ingest adapters, the `deep-research`
pattern, the backlog `capture` hand-off); its own earned substance is the **confrontation with this repo and
the gated adopt decision**, which no other tool performs. It **never files anything without operator approval**.

**Input.** The sources: URLs, file paths (PDF / text / markdown), a video link, or text supplied inline.
One or many, mixed — passed when the skill is invoked. If no source is given, ask which sources to harvest
(never invent them).

## What this is NOT (route elsewhere)
- A web research engine → that is `deep-research` (fan-out search to answer an open QUESTION). This skill
  starts from sources you already have and points them AT this repo.
- A knowledge vault / compounding wiki → that is the accumulation path (a source-digester / a PKM island).
  Harvest outputs are **proposals and tracked items, not pages filed back into this repo**.
- A replacement for problem-framing → if a harvest surfaces a problem-shaped effort, **hand off to `frame`**;
  do not absorb the framing here.

## Protocol

1. **Ingest (per source → structured extract).** For each source, use the fitting existing capability and do
   NOT build a parallel one: a video link → a video→context adapter (e.g. the media-context MCP); a URL →
   a web-fetch tool; a local PDF / text / markdown → read it; inline text → use it directly. Where a source
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
   rule or Vision/Brief/Spec clause, an issue #, or a tree path — never a bare claim or invented rationale. A
   classification whose evidence cites nothing concrete is not earned: re-read the actual surface for the real
   anchor; if none is found, don't force the bucket — the "be honest about uncertainty" rule above applies (an
   unanchored insight is not a confident classification). (Both live-observed misclassifications rode invented
   "evidence" that cited no anchor.)

4. **Propose (tiered, ranked).** Only **gap** insights are candidates. For each, propose one disposition —
   **open** (a new tracker item), **amend** (extend an existing item — name it), or **do-not-file** (real but
   not worth tracking — say why) — ranked by strategic impact for this repo. `already-maps` and
   `doctrine-cuts` insights are reported as evidence, never proposed as work.

5. **HALT — surface the Harvest Report and STOP for approval.** Emit the report (below) and wait. Do not
   file, open, amend, or edit any tracker item before the operator approves specific proposals. Approval is
   per-proposal (approve some, reject others, edit any).

6. **File only what was approved.** For each approved proposal, hand off to the backlog `capture` skill
   (open) or post the amend comment (amend); an approved **do-not-file** files nothing by design (it is a
   decision, not an action). File nothing else. Never auto-implement a finding (that is a separate, later
   decision).

## Harvest Report (the artifact of step 5)

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
| <insight> | already-maps / doctrine-cuts / gap | <AGENTS.md §, guideline, Vision/Brief/Spec §, issue #, tree path — a real anchor, never a bare claim> |

## Proposal (gaps only — ranked)  ⟶ AWAITING APPROVAL
<!-- Rank ALL proposals by strategic impact for this repo, do-not-file included: a do-not-file is a
     decision (not an action), ranked where its impact belongs — a high-impact real-but-not-tracked
     insight still rises, it simply files nothing on approval. -->

1. <insight> — **open** — <title + why it matters to this repo>
2. <insight> — **amend #N** — <what to add>
3. <insight> — **do-not-file** — <why real-but-not-tracked>
```

## Discipline
- **Compose, don't reinvent** — ingest and synthesis reuse existing capabilities; this skill's own work is
  steps 3–6.
- **The gate is absolute** — no tracker mutation before approval (the draft-never-freeze / never-merge spirit
  applied to filing). Rubber-stamping the report into files without a real approval defeats the skill.
- **Confrontation is judgment** — the report attests the pass ran and what it found; it never claims to have
  found everything.
- **Outputs are proposals, not a vault** — harvest produces tracked items, never pages accreted into this repo.

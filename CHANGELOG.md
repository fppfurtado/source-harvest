# Changelog — source-harvest

Keep-a-Changelog-inspired; newest first. This unit versions on its own line (`source-harvest-vX.Y.Z`).

## [Unreleased]

## [0.3.0] - 2026-08-23

### Added
- **Two confront/ingest depth gaps closed, surfaced by the skill's own reflexive loop** (agent-kit #989,
  cross-repo-origin from working mneme#210 — the harvest improving via the issue it filed). Owed-at-release
  eval **EARNED** at weak tier (`reports/2026-08-23-v0.3.0-989-depth-gaps/`, 3/3 vs 0/3 on both
  discriminating assertions) — but
  only once D1/D2 were given **structural Harvest-Report anchors** (a `Live-signal check:` line + a
  per-source `ingest level:` tag): the eval's load-bearing lesson was that the D1/D2 PROSE alone NULLED at
  weak tier (WITH == BASELINE), earning only when anchored to a report slot the weak model fills in — the
  same mechanism that earned v0.2.0's step 4.
  - **D1 — confront against the repo's LIVE operational signal, not only static doctrine (step 3).** Step 3
    confronted only DOCUMENTARY surfaces (`AGENTS.md`/`CLAUDE.md`, `guidelines/`, frozen contracts, tree,
    open issues) — the repo as WRITTEN. It now also confronts, VOI-gated like step-4 validation, against a
    cheap queryable LIVE signal (a CLI, an eval/metrics command, a data probe) whose result would change an
    insight's bucket — classifying against the system as it RUNS, not only as documented. Proof (#210): a
    frozen Brief's failure mode read as an adopt-worthy `gap`; a one-line probe of the running instance
    showed the failure was already inverted today → the verdict flipped adopt→reject. A live-probe result is
    now a first-class evidence anchor (evidence gate + Report table), and the Confrontation section carries a
    required **`Live-signal check:`** line that forces the confront to surface (the structural anchor the
    eval showed is load-bearing at weak tier).
  - **D2 — recognize a codebase/tool SOURCE and ingest it at code level, not README/prose (step 1).** Added
    a "software tool / codebase in this repo's bounded context" source type whose fitting ingest is a
    structured code-level read of the actual source (clone to scratch + parallel readers over the
    load-bearing modules/crates/docs), with the README as a SECONDARY anchor — a tool's self-description is
    its aspiration, its code is its actual commitment (the doctrine-vs-code gap D1 names on the incumbent
    side, here on the SOURCE side). Proof (#210): ai-memory's README said "capture is automatic"; the
    code revealed a shipped-off `require_approval` switch + no trust field — the evidence the verdict
    actually turned on. Surfaces via a required per-source **`ingest level:`** tag in the Report (the
    structural anchor that makes it fire at weak tier).
  - **D3 — name the confrontation-as-MIRROR outcome (route-to-frame).** When the highest-value yield is not
    an adopt/reject of the source but a re-illumination of THIS repo's OWN deferred/unbuilt debt the source
    does not fix, that self-debt is a `frame` candidate on our own thing — routed to `frame`, not forced
    into an adopt bucket (a light naming of an outcome the existing frame hand-off already partly covered).

## [0.2.0] - 2026-08-09

### Added
- **Claim-validation step (step 4): validate the leverageable points against current evidence before
  proposing adoption** (agent-kit #696). After Confront raises the `gap` candidates, the skill now CONFIRMS
  or REFUTES each point whose adopt-decision rests on a decaying/empirical claim (a version, benchmark,
  "current best practice", cited result) against the most-recent web/academic/authoritative evidence —
  following the `deep-research` fan-out-then-adversarially-verify PATTERN with whatever web-search/fetch tool
  is available (a pattern applied, not a callable dependency), scoped to a *closed* claim-check (never an
  open research question, preserving the bounded-context line vs `deep-research`). This **discharges the
  previously-dangling `unverified — confirm` loop** (step 2 tagged decaying claims but no step ever
  confirmed them). Outcome routes into the proposal: a **refuted** point is routed to `do-not-file` with the
  refutation cited (never `open`/`amend`); a **confirmed** point carries its evidence; an
  **inconclusive / not-externally-validatable / no-tool** point carries an explicit `unverified` flag so the
  operator adopts with eyes open. **Portability-clean:** where no research tool exists it resolves the point
  to a distinct `unverified (no tool)` verdict rather than failing. Adds a Validation section to the Harvest
  Report.

### Fixed
- **Confrontation reads frozen product/design contracts + an evidence-citation gate** (agent-kit #580,
  cross-repo-origin from a live mneme harvest). Step 3's binding-context reading list now names a repo's
  **frozen Vision/Brief/Spec** — where the load-bearing doctrine may live rather than in `CLAUDE.md`, so
  confronting only the `CLAUDE.md` surface read a partial anchor and misclassified (two live insights were
  mis-bucketed against ground-truth that lived in the frozen Vision). Adds an **evidence gate**: each
  bucket's justification must cite a real anchor (file/section, guideline, Vision/Brief/Spec clause, issue #,
  tree path), never a bare or invented claim — closing the fabricated-evidence hole both misclassifications
  rode. Stays bounded-to-the-insight (not a mandate to read all of `solution/` every harvest).

## [0.1.1] - 2026-07-29

### Fixed
- **Do-not-file ranking rule made explicit** (doctrine-review agent-kit #533, Stage 4). The ranked Proposal
  section now states that `do-not-file` items are ranked by strategic impact alongside `open`/`amend` (a
  do-not-file is a decision, not an action — it files nothing on approval but still takes its place in the
  ranking). Clarifies an under-specified ordering; no behavior contract change.

### Changed
- **Ingest example refreshed: `youtube-context` → `media-context`.** The video→context adapter example in
  the Ingest step now names the `media-context` MCP — the live successor after `youtube-context` was retired
  (its YouTube adapter was absorbed by media-context). Illustrative only; no change to the source-agnostic
  ingest behavior. (agent-kit #283, ripple of #236)

## [0.1.0] - 2026-07-14
### Added
- Initial release: a portable standalone skill (SKILL.md standard — Claude Code + Cursor) that runs the
  harvest ritual as one pass: ingest 1..N external sources (video / URL / PDF / pasted text) → cross-source
  synthesis → **confront THIS repo's doctrine + tree + open issues** (already-maps / doctrine-cuts / gap) →
  ranked, operator-gated adopt-proposal (open / amend / do-not-file) → **HALT for approval** → file only
  approved items via the backlog `capture` hand-off.
- Composes existing capabilities for ingest + synthesis (video→context / web-fetch adapters, the
  `deep-research` synthesis stance); its own earned substance is the confront-and-propose spine.

### Notes
- Not `deep-research` (answers an open research question) and not a knowledge-vault (accumulates pages) —
  it confronts a specific repo and proposes what to adopt, then stops. Outputs are tracked items, never
  pages accreted into the repo.
- Provenance: agent-kit #116 (frame → software-track → build). Reshaped from a repo-local Claude command to
  a portable dual-harness unit for no-vendor-lock-in (subsumes #218).

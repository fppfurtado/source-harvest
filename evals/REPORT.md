# source-harvest eval — outcome record

Two runs, one per behavioural release. Newest first.
- **v0.3.0 (2026-08-23)** — #989 D1/D2 (below): confront-vs-live-signal + code-level tool-ingest.
- **v0.2.0 (2026-08-09)** — #696 step-4 claim-validation (further down).

---

# v0.3.0 — #989 depth gaps (D1 + D2)

**Run: 2026-08-23** (archive + raw outputs: `reports/2026-08-23-v0.3.0-989-depth-gaps/`). Discharges the **owed-at-release**
obligation for v0.3.0 (agent-kit #989), same lean blind weak-tier ablation harness (`fixtures/v2-*`).

## What was tested
The two confront/ingest behaviours added in v0.3.0: **D1** — does the skill confront an insight against the
repo's LIVE operational signal (a named metrics probe), gating the classification on the running state
rather than the doctrine alone? **D2** — does it recognize a software-tool source and flag its README as a
SECONDARY anchor (the code the deciding, un-ingested evidence), rather than ingesting the marketing claim as
the tool's behaviour? Fixture: memcap (a tool source) → recall-kit, whose Brief names an OPEN failure `#37`
that memcap's auto-capture would fix (doctrine-only pull ⇒ gap/adopt) and which exposes a live probe.

- **Arms.** WITH = SKILL.md under release (D1/D2 prose **+ structural report-template anchors**). BASELINE
  = SKILL.md at `8da29c2` (pre-#989). n = 3/arm, `claude-haiku-4-5-20251001`, plan-only (live-signal SEEK
  form — the probe is named-but-not-pasted, so the discriminator is whether the arm CONFRONTS/seeks it).
- Grading: `reports/2026-08-23-v0.3.0-989-depth-gaps/grading.json`; cases: `cases.md` (v2 section).

## Verdict — EARNED (with structural anchors)

| Assertion | WITH | BASELINE |
|-----------|------|----------|
| **A1** confront the insight against the live signal (emit a `Live-signal check` naming the probe) | **3/3 pass** | **0/3 pass** |
| **A1-strong** additionally mark the classification provisional | **2/3** (run-3 makes a VOI-decline) | — |
| **A2** tool source's README flagged SECONDARY, code as un-ingested deciding evidence | **3/3 pass** | **0/3 pass** |
| **A3** (WITH-only) no fabricated probe/code; live-signal VOI-gated, no-tool handled honestly | **3/3 pass** | — |

**The load-bearing lesson — prose alone NULLED; the structural anchor earned it.** A prior de-confounded
run of the PROSE-ONLY #989 edits (no report-template slot) nulled: WITH == BASELINE, 3/3 both bucketing
`gap` and proposing adopt, neither surfacing D1 or D2. The weak model does not operationalize prose guidance
that has no slot to fill. The lift above appears only after adding two STRUCTURAL anchors — a
`Live-signal check:` line and a per-source `ingest level:` tag — mirroring exactly why v0.2.0's step 4
earned (a structural report section the weak model fills in). The baseline is silent on the running state
0/3 (it never emits a live-signal check nor tags an ingest level — the pre-#989 skill never tells it to).
Precision nuance: the D1 CONFRONT fires 3/3, but only 2/3 mark the classification provisional — run-3 fires
the check then makes a VOI call that the signal is non-decisive (debatable on a fixture designed so it WOULD
move the bucket); a judgment-quality nuance, not an absence of the behaviour. (An earlier apparent lift in a
CONFOUNDED fixture — a repo line handing `doctrine-cuts` to both arms, a source note handing code-secondary
to both — was pure fixture-cueing; both confounds were removed before the runs above.)

## Caveats
n=3/arm, one fixture, one tier, plan-only, SEEK-form. Small sample, characterized not tuned.

---

# v0.2.0 — #696 step-4 claim-validation

**Run: 2026-08-09** (archive + raw outputs: `reports/2026-08-09/`). This is source-harvest's
first eval pack — a lean, self-contained blind weak-tier ablation (not the throughline suite harness),
built to discharge the **owed-at-release** obligation for v0.2.0 (agent-kit #696).

## What was tested

The **step-4 claim-validation** behavior added in v0.2.0: after Confront raises the `gap` adopt-candidates,
does the skill validate each decaying/empirical claim against current evidence — confirm/refute (or, no
tool, resolve to an explicit `unverified (no tool)` verdict) — before proposing, and route the verdict into
the proposal? And does it NOT over-reach onto a timeless design stance (VOI-gate precision)?

- **Arms.** WITH = SKILL.md under release (step 4 present). BASELINE = SKILL.md at `6b86e74` (pre-#696, no
  step 4). Both given only the skill + one fixture (`fixtures/v1-*.md`, three claims that all confront as
  `gap`) + "produce the Harvest Report".
- **Tier / mode.** `claude-haiku-4-5-20251001` (weakest supported), plan-only (headless has no web tool, so
  the discriminator is whether the validation STEP happens, per the skill's own no-tool degradation).
- **n** = 3 runs/arm. Grading: `reports/2026-08-09/grading.json`; cases: `cases.md`.

## Verdict — EARNED (clean lift, not exempt)

| Assertion | WITH | BASELINE |
|-----------|------|----------|
| **A1** validation step over the decaying gap-claims (before proposing) | **3/3 pass** | **0/3 pass** |
| **A2** decaying claim not proposed adopt-ready without its verdict | **3/3 pass** | **0/3 pass** |
| **A3** (WITH-only) timeless stance not force-searched (`not-externally-validatable`) | **3/3 pass** | — |

The load-bearing finding: the BASELINE is a **faithful** weakest-tier agent — it *does* fire step 2's
`unverified — confirm` tag on the benchmark, and one run even flags it as ~17 months stale — **yet still
proposes it as adopt-ready** ("highest strategic impact", "concrete benchmarked gains"), never discharging
the tag. That undischarged loop is exactly what step 4 closes. So the faithful baseline does NOT already
pass A1 → the behavior is **earned, not exempt** (null-prediction test, #586), confirming the
`owed-at-release` touchpoint call rather than an `exempt-*`.

## Caveats
n=3/arm, one fixture, one tier, plan-only — small sample, characterized not tuned. Reproduce each run:
`FIXTURE=v1 BASE_REF=6b86e74 ./run.sh reports/<date>` (v0.2.0) · `FIXTURE=v2 BASE_REF=8da29c2 ./run.sh
reports/<date>` (v0.3.0). Env knobs: `MODEL`, `RUNS`, `FIXTURE`, `BASE_REF`.

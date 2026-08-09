# source-harvest eval — outcome record

**Latest run: 2026-08-09** (archive + raw outputs: `reports/2026-08-09/`). This is source-harvest's
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
n=3/arm, one fixture, one tier, plan-only — small sample, characterized not tuned. Reproduce:
`./run.sh <out-dir>` (env: `MODEL`, `RUNS`, `BASE_REF`). Re-running supersedes this record.

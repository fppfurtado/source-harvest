# Design — owed-at-release #2356: does the run READ the repo's own capability in the sources' subject? (source-harvest v0.5.0)

Pre-registered 2026-10-06, before any cell ran. Every bar below is fixed now; nothing is settled after the
numbers are read.

**Tier:** weak (`claude-haiku-4-5-20251001`) · **Mode:** tree (the shared driver `evals/lib/skill-ablation.sh`,
read tools live) · **Cells:** 2 fixtures × 2 arms × 5 runs = 20.

## Why tree mode, not the v1/v2 text form

The step under test is a READ: whether the run opens the repo's own capability surface. A fixture that pastes
the repo into the prompt hands the run that surface and cannot test the step that would have found it
(`guidelines/testing.md`, "an input handed inline cannot test the step that would have produced it"). So the
target repo is a real tree the cell explores with its own tools, and the driver logs every `Read`.

## Fixtures

The target repo is `fixtures/v3-repo/` (`trailmap`, a small web app). Its own UX capability is
`skills/ux-check/` (`SKILL.md` + `rubric.md`). The doctrine surfaces (`AGENTS.md`, `guidelines/`, `build/`,
`ISSUES.md`) never name `ux-check` or anything in its rubric, so its content can be reached only by opening it.
`AGENTS.md` names `skills/<name>/` generically, the way the real agent-kit floor did when the #2356 miss
happened.

- **`f-cap`** (the case): S1 = a pasted design-skill collection. Its insights and the ground truth:
  - responsive tables → **already-maps, rubric H5** (only `rubric.md` says it). `ISSUES.md` #15 pulls toward
    `gap`, which is the failure mode;
  - empty states → **already-maps, rubric H6** (only `rubric.md`);
  - inline form validation → **gap** (the rubric does not cover it; `ISSUES.md` #18 is the amend target);
  - frontmatter/manifest packaging → **already-maps** via `AGENTS.md` + `build/check_skills.py` (#12 related).
- **`c-null`** (the control): S1 = a pasted database-migration skill collection. The repo has **no**
  capability in that subject.

## Arms (isolate the change under test)

- **BASELINE `804821df`**: `skills/source-harvest/SKILL.md` before PR #2484 (no capability lookup, no
  `Capability check:` slot).
- **TREATMENT**: the SKILL.md as merged by PR #2484 (`ffd24fe7`), identical to this branch's.

The diff does **not** isolate one change. It carries the step-3 capability lookup + report slot (under test),
the step-1 ingest rationale for prose-substance sources, the redefined `ingest level:` values, and two cut
provenance parentheticals. The step-1 changes act on a source given as a repo or URL; here every source is
pasted, so they reach this fixture only as the `ingest level:` value names. Recorded here, not after the run.

Each arm's tree = `fixtures/v3-repo/` + that arm's `skills/source-harvest/SKILL.md`.

## Signals

- **A (primary, mechanical) — the run READ the capability.** `yes` when the cell's `.reads.txt` lists a file
  under `skills/ux-check/`. Read off the driver's sidecar, never judged.
- **A\* (secondary, graded) — the read reached the verdict.** On `f-cap`, `yes` when the report buckets the
  responsive-tables insight **or** the empty-states insight as `already-maps` and cites `ux-check` (its
  rubric or SKILL.md) as the evidence.
- **H (harm, graded) — a capability invented where none exists.** On `c-null`, `yes` when the report names any
  of this repo's skills, or its rubric, as a capability that does a migrations job, either in a
  `Capability check:` line or as `already-maps` evidence. Naming `none in this repo`, or mentioning
  `ux-check` while saying it does not cover migrations, is `no`.

## Bars

- **Regression:** A delta (TREATMENT − BASELINE, `f-cap`) < 0, **or** A\* declines by ≥ 2 cells → the
  edit does not land.
- **Earned:** TREATMENT A ≥ 4/5 **and** A delta ≥ +3.
- **Redundant:** BASELINE A ≥ 4/5. The discipline already binds without the edit.
- **Middle band:** neither regression nor Earned (nor Redundant) → the edit lands as recorded legibility,
  NOT earned. The text is not then tightened against this fixture.
- **No-harm (binds whatever bar applies):** TREATMENT H ≤ 1/5 on `c-null` and not above BASELINE H.

## Grading

- A is mechanical (`.reads.txt`).
- A\* and H go to one blind `throughline:eval-grader` per cell over anonymous cells
  (`evals/lib/shuffle-cells.py`). The rubric is `RUBRIC-v3.md`. I spot-read ≥ 3 cells and record any
  disagreement against the rubric's letter.
- **Scope:** A and A\* are scored on `f-cap` only; H on `c-null` only.
- **Wobble re-runs:** none. n = 5 per arm, as run.
- **Nearest legitimate answer (A\*):** a report that cites `ux-check` as the capability in its `Capability
  check:` line but buckets both rubric-covered insights as `gap`. Scores **`no`**: the read did not reach
  the verdict, and that is the #2356 failure the slot exists to prevent.

## Validity

The harness half is the driver's (`cell_validity.py`). Pack half: a cell counts if it produced a report with
a confrontation section. A cell that never opened anything, or never produced the `Capability check:` line,
is **non-compliant and scored**, never voided: declining the step is the treatment's behaviour, not an
instrument fault.

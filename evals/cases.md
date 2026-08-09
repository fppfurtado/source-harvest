# source-harvest eval — cases (blind weak-tier ablation)

Tests the **step-4 claim-validation** behavior added in v0.2.0 (agent-kit #696). One fixture
(`fixtures/v1-source.md` + `fixtures/v1-repo.md`) carries three claims that all confront as `gap`
against the target repo, exercising both the trap and the precision case in one harvest.

**Arms.** WITH = the SKILL.md under release (step 4 present). BASELINE = the SKILL.md at the pre-#696
commit `6b86e74` (no step 4). Both arms are given ONLY the skill + the fixture + "produce the Harvest
Report"; the grader is blind to the arm. Plan-only is acceptable — headless has no web tool, so the
discriminator is whether the output *runs a validation step* over the decaying gap-claims (the skill's
own no-tool degradation resolves them to `unverified (no tool)`; the point is that the step HAPPENS),
not whether a real fetch occurred.

## Case V1 — trap (decaying empirical claims must be validated, not proposed raw)
The source's claim (1) "prompt-chaining a small model beats one large call — 14-pt lift on FinExtract-v2,
3x cheaper, **March 2025**" and claim (2) "**ReAct is now obsolete**, everyone moved to plan-execute" are
both **decaying/empirical** and both confront as `gap` (extract-svc does neither).

- **A1 (discriminating).** The output contains a **validation step/section** that confirms/refutes claims
  (1) and (2) against current external evidence *before* proposing them — OR, no-tool, resolves them to an
  explicit `unverified (no tool)` verdict. (BASELINE expected to FAIL: it proposes them straight from the
  Confront gap, with at most step-2's `unverified — confirm` tag and no discharge.)
- **A2 (routing).** A claim the output judges refuted/unverified is NOT proposed as a plain adopt-ready
  `open`/`amend` without its validation verdict attached.

## Case V2 — precision / no-harm (a timeless design stance must NOT be force-searched)
The source's claim (3) "keep problem-framing separate from solution choice — **timeless, not a benchmark
thing**" is a non-empirical design stance and also a `gap` (extract-svc picks tools ad hoc).

- **A3 (precision).** The output does NOT fabricate an external benchmark/evidence search for claim (3);
  it either proposes it on repo-fit judgment or marks it `not-externally-validatable`. (Guards the VOI
  gate — the new step must not turn every gap into a spurious web search.)

## Grading
Per arm, per assertion: pass/fail with a cited quote from the output. n=3 WITH + n=3 BASELINE (A1/A2);
A3 on the WITH arm (precision is a WITH-only property). Small n — characterize surface-vs-reasoning; do
not tune on a minimal sample.

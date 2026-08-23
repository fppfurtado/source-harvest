# source-harvest eval — cases (blind weak-tier ablation)

Two fixture sets, each a self-contained blind weak-tier ablation of a behaviour this skill added:
- **v1** (below) — the **step-4 claim-validation** behavior added in v0.2.0 (agent-kit #696).
- **v2** (further down) — the **D1 confront-vs-live-signal + D2 code-level tool-ingest** behaviours added
  in v0.3.0 (agent-kit #989).

## v1 fixture — step-4 claim-validation (v0.2.0, #696)

The v1 fixture (`fixtures/v1-source.md` + `fixtures/v1-repo.md`) carries three claims that all confront as
`gap` against the target repo, exercising both the trap and the precision case in one harvest.

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

## Grading (v1)
Per arm, per assertion: pass/fail with a cited quote from the output. n=3 WITH + n=3 BASELINE (A1/A2);
A3 on the WITH arm (precision is a WITH-only property). Small n — characterize surface-vs-reasoning; do
not tune on a minimal sample.

---

# v2 fixture (`fixtures/v2-source.md` + `fixtures/v2-repo.md`) — the #989 depth gaps (D1 + D2)

Tests the two confront/ingest behaviours added in v0.3.0 (agent-kit #989), in ONE harvest that faithfully
re-creates the mneme#210 dynamic that surfaced them.

**Arms.** WITH = the SKILL.md under release (D1 + D2 present). BASELINE = the SKILL.md at the pre-#989
commit `8da29c2` (no D1/D2). Both arms get ONLY the skill + the v2 fixture + "produce the Harvest Report";
the grader is blind to the arm. Plan-only, **live-signal SEEK form** — headless has no clone/web tool, and
the live probe's OUTPUT is deliberately NOT pasted (the fixture NAMES the probe as available; the tool
source is given at README level only). So the discriminator is whether the output *confronts/seeks the
named live signal and gates its classification on it* (D1) and *flags a tool source's README as SECONDARY,
the code the deciding un-ingested evidence* (D2) — NOT whether a real clone or CLI run occurred, and NOT
a reaction to pasted metric values (there are none).

The fixture: source S1 = `memcap`, a software TOOL whose README says capture is "fully automatic, zero
ceremony, no approval". The synthesized insight — "adopt memcap-style auto-capture to fix recall-kit's
forgotten-save failure" — confronts against `recall-kit`, whose **frozen Brief** names BR-07 ("skipping
the close deposit empties the queue; never-miss is the north star", open as `#37`) — a doctrine-only read
pulls toward `gap`/adopt. The Brief also NAMES a live metrics probe (`recall-kit eval proposals`) as
available-to-query; its output is not in the prompt.

## Case V2-D1 — confront the RUNNING system, not only the doctrine (seek the live signal)
- **A1 (discriminating).** The Confrontation confronts the auto-capture insight against the named LIVE
  signal — it emits a `Live-signal check` naming `recall-kit eval proposals`, resolves it to `signal named
  but no tool to run it`, and marks the classification PROVISIONAL (the running state may differ from the
  doctrine) rather than classifying gap→adopt from the Brief alone. (BASELINE expected to FAIL: no
  live-signal check; it classifies from the Brief + `#37` doctrine → buckets `gap` and proposes adopting
  auto-capture, never gating on the runtime the skill never told it to consult.)

## Case V2-D2 — a tool source is read at code level, README secondary
- **A2 (discriminating).** The output tags S1 (`memcap`) with an `ingest level` treating it as a
  software-tool / codebase source whose README is a SECONDARY anchor — it flags the deciding evidence as
  the tool's CODE (a code-level read), un-ingested here, not the README's "automatic, no approval" claim.
  (BASELINE expected to FAIL: it ingests the README claim as memcap's actual behaviour, with no code-level
  caveat.)

## Case V2-precision — no fabricated probe / no hallucinated code (WITH-only)
- **A3 (precision / no-harm).** The WITH output does NOT fabricate a live-probe result it wasn't given or
  hallucinate memcap's source contents — it resolves the un-runnable probe to `no tool to run it` and flags
  the missing code read as a limitation, keeping the live signal VOI-gated, rather than inventing metrics
  or code. (Guards D1's VOI-gate + D2 not over-firing into fabrication.)

## Grading (v2)
Per arm, per assertion: pass/fail with a cited quote. n=3 WITH + n=3 BASELINE (A1/A2); A3 on the WITH arm.
Small n — characterize surface-vs-reasoning; grade transcripts by full read, not grep.

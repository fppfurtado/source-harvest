#!/usr/bin/env bash
# Lean, self-contained blind weak-tier ablation for source-harvest's step-4 claim-validation.
# Not the throughline suite harness — a standalone skill's first eval pack (agent-kit #696).
#
# WITH arm      = the SKILL.md in this working tree (step 4 present).
# BASELINE arm  = the SKILL.md at the pre-#696 commit (no step 4), fetched from git.
# Both arms get ONLY the skill + fixture + "produce the Harvest Report"; grading is separate + blind.
# Plan-only: headless has no web tool, so the discriminator is whether a VALIDATION STEP happens over the
# decaying gap-claims (skill's own no-tool path resolves them to `unverified (no tool)`), not a real fetch.
#
# Usage:  ./run.sh <out-dir>            (defaults: MODEL=claude-haiku-4-5-20251001, RUNS=3, BASE_REF=6b86e74)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"

# --- HOME isolation via the shared helper (agent-kit #647/#700) ---------------------------------------
# `claude -p` loads the operator's global ~/.claude/CLAUDE.md, whose doctrine would otherwise leak into
# BOTH arms (agent-kit #414/#643). Source the SAME single-sourced helper the root evals/ runners use — it
# builds a fresh auth-only temp HOME, unsets CLAUDE_CONFIG_DIR, and PRE-FLIGHT-asserts the isolation is in
# effect (a bare `HOME=` redirect can't verify those, #647). This eval pack lives permanently in-repo
# (the adapters symlink SKILL.md ONLY — the evals/ dir never ships, and standalone skills/ are never
# subtree-extracted), so the ../../../evals/lib path is stable; sourcing it is valid, not fragile. The
# helper leaves $ISO_HOME for the CALLER to clean.
source "$HERE/../../../evals/lib/isolate-home.sh"
trap 'rm -rf "$ISO_HOME"' EXIT

OUT="${1:?usage: run.sh <out-dir>}"
MODEL="${MODEL:-claude-haiku-4-5-20251001}"
RUNS="${RUNS:-3}"
BASE_REF="${BASE_REF:-6b86e74}"

WITH_SKILL="$(cat "$HERE/../SKILL.md")"
BASE_SKILL="$(git -C "$HERE" show "$BASE_REF:skills/source-harvest/SKILL.md")"
SOURCE="$(cat "$HERE/fixtures/v1-source.md")"
REPO="$(cat "$HERE/fixtures/v1-repo.md")"

mkdir -p "$OUT/with" "$OUT/baseline"

build_prompt() { # $1 = skill text
  cat <<EOF
You are executing the "source-harvest" skill. Follow it exactly and produce the Harvest Report it
specifies — nothing else. You have NO web/research/file tools available in this run: do the reasoning
from the text given, and where the skill would use a tool you lack, follow whatever the skill says to do
in that case.

=== THE SKILL (source-harvest/SKILL.md) ===
$1

=== SOURCES TO HARVEST ===
$SOURCE

=== TARGET REPO — the binding context to confront against ===
$REPO

Now produce the Harvest Report.
EOF
}

run_arm() { # $1 = arm label  $2 = skill text
  local label="$1" skill="$2" n
  local prompt; prompt="$(build_prompt "$skill")"
  for n in $(seq 1 "$RUNS"); do
    echo "  [$label] run $n/$RUNS ..."
    ( cd "$NEUTRAL_CWD" && timeout 300 claude -p --model "$MODEL" "$prompt" ) > "$OUT/$label/run-$n.md" 2>&1 || echo "(run $n exited non-zero)"
  done
}

echo "== source-harvest step-4 ablation ($MODEL, $RUNS runs/arm, baseline=$BASE_REF) =="
run_arm with "$WITH_SKILL"
run_arm baseline "$BASE_SKILL"
echo "done -> $OUT"

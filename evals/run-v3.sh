#!/usr/bin/env bash
# v3 ablation (#2356): does the run READ the repo's own capability in the sources' subject?
# Tree mode of the shared driver, because the step under test is a read (DESIGN-v3.md § Why tree mode).
#
# Usage:  ./run-v3.sh <out-dir>          (BASE_REF defaults to 804821df, the commit before PR #2484)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(git -C "$HERE" rev-parse --show-toplevel)"
BASE_REF="${BASE_REF:-804821df}"
FX="$HERE/fixtures/v3-repo"

# Fixture gate: the doctrine surfaces must not leak the capability's content. If they named ux-check or
# its rubric, a run would reach the capability without opening it, and A would measure nothing.
# The scorer's SENTINELS (score-a-v3.py) are checked too: a leaked sentinel would inflate A-content.
# grep exits 2 when a path is missing; that must fail the gate, not read as "no leak".
for pat in 'ux-check|rubric|stacked cards|empty state' \
           'Data-dense tables at narrow width|Recognition over recall|Review a built trailmap screen|judge it against every'; do
  rc=0; grep -rilE "$pat" "$FX/AGENTS.md" "$FX/guidelines" "$FX/build" "$FX/ISSUES.md" || rc=$?
  if [ "$rc" -eq 0 ]; then echo "FATAL: a doctrine surface leaks the capability (files above)" >&2; exit 1; fi
  if [ "$rc" -ne 1 ]; then echo "FATAL: the fixture gate could not read a doctrine surface (grep exit $rc)" >&2; exit 1; fi
done

source "$REPO_ROOT/evals/lib/skill-ablation.sh"
trap 'rm -rf "$ISO_HOME"' EXIT

TREES="$(mktemp -d "$ISO_HOME/trees.XXXXXX")"
for arm in with base; do
  mkdir -p "$TREES/$arm"
  cp -R "$FX/." "$TREES/$arm/"
  mkdir -p "$TREES/$arm/skills/source-harvest"
done
cp "$HERE/../SKILL.md" "$TREES/with/skills/source-harvest/SKILL.md"
git -C "$REPO_ROOT" show "$BASE_REF:skills/source-harvest/SKILL.md" > "$TREES/base/skills/source-harvest/SKILL.md"

SKILL_NAME=source-harvest
OUT="${1:?usage: run-v3.sh <out-dir>}"
WITH_ROOT="$TREES/with" BASE_ROOT="$TREES/base"
export SKILL_NAME OUT WITH_ROOT BASE_ROOT
skill_ablation_run "$HERE"/fixtures/v3-cases/*.txt

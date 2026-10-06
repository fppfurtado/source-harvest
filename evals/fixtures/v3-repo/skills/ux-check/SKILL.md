---
name: ux-check
description: Review a built trailmap screen against this repo's UX rubric before it ships.
---

# ux-check

Read the screen's source (`src/pages/<page>.tsx` and the components it uses) and judge it against every
heuristic in `rubric.md`. Report each violation with the heuristic id, the file and line, and the fix.
Surface-only: never edit the code.

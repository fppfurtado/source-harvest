# AGENTS.md — trailmap

trailmap is a route-planning web app (React front end, a small Node API). This file governs how the repo
is organized and how changes land.

## Layout
- `src/` — the app: `components/` (shared UI), `pages/` (routed screens), `api/` (the Node service).
- `skills/<name>/` — agent skills this repo ships and uses in its own workflow; each one's `SKILL.md` is
  its canonical home.
- `guidelines/` — engineering guidelines.
- `build/` — CI checks and release scripts.
- `ISSUES.md` — the open backlog.

## Rules
- Every change lands through a pull request; CI must be green.
- Commit messages follow Conventional Commits.
- A skill's frontmatter must be valid YAML with `name` and `description`; `build/check_skills.py` enforces
  it in CI. A skill ships with a plugin manifest at `skills/<name>/plugin.json`.
- Dependencies are pinned; no floating ranges.

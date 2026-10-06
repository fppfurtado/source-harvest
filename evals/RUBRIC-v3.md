# Rubric — v3 (#2356): grade each anonymous cell blind

Each cell is a Harvest Report produced against the `trailmap` repo. You do not know which version of the
skill produced it. Grade only what the report shows.

Read the report in full, then answer the ONE question that matches the sources it harvested.

## If S1 is a DESIGN skill collection (responsive tables · form feedback · empty states) → signal A\*

`yes` when the report buckets the **responsive-tables** insight **or** the **empty-states** insight as
`already-maps` AND cites `ux-check` (its rubric or SKILL.md) as the evidence for that bucket.

`no` otherwise. In particular, `no` when the report names `ux-check` somewhere (for example in a
`Capability check:` line) but buckets both of those insights as `gap` or otherwise does not cite `ux-check`
for them.

## If S1 is a DATABASE-MIGRATION skill collection → signal H

`yes` when the report names any of this repo's skills (`ux-check`, `release-notes`, or another) or the
`ux-check` rubric as a capability that does a database-migration job, either in a `Capability check:` line
or as `already-maps` evidence for a migration insight.

`no` when the report says the repo has no capability in that subject, or mentions a repo skill only to say
it does not cover migrations, or does not name a repo skill as a migrations capability at all.

## Output

Per cell: `{"cell": "<id>", "signal": "A*" | "H", "value": "yes" | "no", "evidence": "<a short verbatim quote>"}`.

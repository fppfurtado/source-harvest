# Target repo context (fixture V2) — the repo the harvest is confronted AGAINST

> This is the ENTIRE binding context of the target repo for this eval. The harvest must confront the
> source's insight against THIS.

**Repo: `recall-kit`** — a sovereign knowledge-capture system for AI agents.

## Doctrine / frozen Brief excerpt (the repo as WRITTEN)

- recall-kit's founding Brief names its top failure mode, **BR-07**: "**skipping the session-close deposit
  empties the queue** — an agent that forgets to save leaves the memory store starved. **Never-miss capture
  is the north star.**"
- Capture today is a manual operator step at session close: the agent must remember to run the deposit.
  There is no automatic fallback if it is skipped.
- Open issue `#37 close-deposit is skippable → queue can starve` — the BR-07 failure, still open and
  unsolved. The Brief flags closing it as a priority.

## Live operational metrics

`recall-kit` exposes a runtime metrics command, `recall-kit eval proposals`, that reports the capture
queue's current health. It is available to query.

There is no `guidelines/` beyond the above. This file is the whole binding context surface.

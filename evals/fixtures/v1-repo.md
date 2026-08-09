# Target repo context (fixture V1/V2) — the repo the harvest is confronted AGAINST

> This is the ENTIRE binding context of the small target repo for this eval (stand in for its AGENTS.md).
> The harvest must confront the source's claims against THIS.

**Repo: `extract-svc`** — a document-extraction microservice.

- It calls a **single large model** for extraction today (one call per document). It has never tried
  decomposing extraction into a chain of small-model calls.
- Its agent loop uses the **ReAct** interleaving pattern.
- It has **no** stated doctrine about separating problem-framing from solution choice; the team picks
  tools ad hoc per ticket.
- Open issues: `#41 extraction accuracy plateau on financial docs`; `#52 model cost is the top line item`.

There is no `guidelines/`, no frozen Vision/Brief/Spec. This file is the whole doctrine surface.

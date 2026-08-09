# Source S1 (fixture V1) — conference talk transcript excerpt

> Provenance: excerpt from a (fictional) conference talk "Shipping agents in 2025", speaker's slides + transcript.

"...and here's the headline result. As of our March 2025 benchmark run, **prompt-chaining a small model
beats a single large-model call for multi-step extraction** — we measured a 14-point accuracy lift on the
FinExtract-v2 suite while cutting cost 3x. So the current best practice for any extraction pipeline is:
stop reaching for the biggest model, decompose the task into a chain of small-model calls. Second point —
**the ReAct pattern is now obsolete**; every serious agent framework has moved to explicit plan-execute
graphs, ReAct-style interleaving is a 2023 artifact you should rip out. Finally, a design point we've held
for years and it keeps paying off: **keep the problem definition separate from the solution** — frame what
you're solving before you pick tools; that discipline is timeless, not a benchmark thing."

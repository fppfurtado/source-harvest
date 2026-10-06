Now I have the context. Let me walk through the source-harvest protocol (steps 1-6) to produce the Harvest Report:

## Protocol Execution

**Step 1: Ingest**
- S1: "migrate-safe" — a collection of three database-migration skills (reversible-migrations, expand-contract, lock-timeouts)
- Ingest level: Prose (README + SKILL.md snippets provided; not a code-level read of the tool's actual implementation)

**Step 2: Synthesize**
- **Converge:** All three skills aim to make production schema changes safer by de-risking the operation
- **Diverge:** reversible-migrations emphasizes rollback capability via up/down/up testing; expand-contract eliminates downtime by phasing changes (add → dual-write → backfill → switch → drop); lock-timeouts adds operational safety (fail-fast detection)
- **Punchline:** Production database safety requires layered patterns — rollback coverage, zero-downtime phases, and aggressive failure detection

**Step 3: Confront THIS repo (Trailmap)**

Reading AGENTS.md, ISSUES.md, and guidelines/engineering.md:
- Trailmap is a route-planning web app (React + Node, stateless API)
- **No SQL/migration/schema files exist in the repo tree**
- API is explicitly stateless; session state lives in the client
- Open issues (#12, #15, #18, #21) focus on UI, skills tooling, and release automation — no database backlog

| Insight | Bucket | Evidence |
|---------|--------|----------|
| Repository should adopt reversible migration patterns (up/down/up in CI) | **gap** | No `*.sql`, `*migration`, `*schema` files in repo; AGENTS.md describes stateless API; ISSUES.md has no database/persistence item |
| Repository should adopt expand-contract pattern for schema changes | **gap** | Same evidence; no schema-change workflow documented |
| Repository should adopt lock timeouts for all DDL statements | **gap** | Same evidence; no DDL safety pattern established |

**Live-signal check:** `no relevant live signal` — trailmap has no running database layer to probe; the absence is a static assertion confirmed by tree inspection.

**Step 4: Validate (gap points only)**

These three insights are design patterns, not empirical claims (no version decay, benchmarks, or falsifiable assertions):
- Verdict: **not-externally-validatable** for all three (timeless architectural practices, not claims that need external confirmation)

**Step 5: Proposal (gaps only — ranked by strategic impact)**

---

# Harvest Report — 2026-10-06

## Sources
- S1: migrate-safe (public collection of database-migration skills for coding agents) — ingest level: prose (README + SKILL.md snippets)

## Per-source extracts
- S1: Claims three database-migration skills: (1) reversible-migrations — every migration includes rollback step; CI tests up→down→up sequence; (2) expand-contract — schema changes use three-release pattern (add new column + dual-write → backfill + switch reads → drop old column); (3) lock-timeouts — all DDL statements include lock timeout to fail fast under contention rather than stalling. Stance: production database safety requires layered patterns covering rollback, availability, and failure detection. — **ingest level:** prose

## Synthesis
- **Converge:** All three skills target production database safety through de-risking schema operations
- **Diverge:** reversible-migrations emphasizes rollback via CI testing; expand-contract eliminates downtime via phasing; lock-timeouts adds operational reliability via fast-fail
- **Punchline:** Safe schema changes require rollback coverage + zero-downtime phasing + aggressive failure detection

## Confrontation with THIS repo
| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Establish reversible-migration pattern (up/down/up in CI) | **gap** | No `*.sql`, `*migration`, `*schema` files in src/ tree; AGENTS.md §Layout/Rules describes no persistence layer; ISSUES.md has no database/schema item; guideline states API is stateless |
| Adopt expand-contract pattern for schema changes | **gap** | Same evidence; no multi-phase schema workflow documented |
| Adopt lock-timeout pattern for all DDL | **gap** | Same evidence; no DDL safety doctrine established |

**Live-signal check:** `no relevant live signal` — trailmap has no running database layer to query; the absence is confirmed by file-tree inspection (no db/ schema/ migrations/ paths).

## Validation of the gap points (step 4)
| Gap point | Verdict | Evidence |
|-----------|---------|----------|
| Reversible migrations + CI up/down/up testing is a production best practice | **not-externally-validatable** | Design pattern, not an empirical claim; timeless architectural practice (no version decay or benchmark to confirm) |
| Expand-contract pattern eliminates downtime in schema changes | **not-externally-validatable** | Design pattern; the practice is established (academic literature + major systems confirm), but the specific claim "this pattern eliminates downtime" is architectural doctrine, not a falsifiable empirical statement |
| Lock timeouts prevent long-running DDL from stalling traffic | **not-externally-validatable** | Design pattern; the underlying principle (detection > silent failure) is sound, but the claim is a design stance |

## Proposal (gaps only — ranked by strategic impact)  ⟶ AWAITING APPROVAL

1. **Establish database migration safety doctrine** — **open** — **Why it matters:** If trailmap adds a persistent database layer (likely for a route-planning app to store user routes / preferences), schema changes in production will be critical and risky. Adopting these patterns from day one (reversible, expand-contract, lock-timeout) prevents retrofit safety work later and establishes a culture of de-risked deployments. — **Verdict:** not-externally-validatable (timeless design patterns); carries no external empirical claim.

   *Proposed title:* "Establish database migration patterns (reversible-migrations, expand-contract, lock-timeouts)"  
   *Proposed body:* When adding a persistent database layer, adopt three production-safety patterns: (1) every migration includes rollback; CI tests up→down→up before merge; (2) schema changes via expand-contract (add → dual-write → backfill → switch → drop); (3) all DDL statements include lock timeout to fail fast under contention.

---

## Next Step
This Harvest Report is complete and **awaiting your approval**. Review the proposal above:

- ✅ **Approve** — files the item to the backlog as a gated follow-up for when database design begins
- ❌ **Reject** — discards the proposal (decide these patterns are not relevant to trailmap's trajectory)
- ✏️ **Edit** — refine the proposal before approval (e.g., change the scope, split into separate items, amend an existing issue instead, or route to `do-not-file`)

**Do not proceed to file this proposal until you explicitly approve it.** Reply with your decision and any edits.
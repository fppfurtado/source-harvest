Now I'll produce the Harvest Report. I have all the context needed.

---

# Harvest Report — 2026-10-06

## Sources
- S1: "migrate-safe" — a public collection of three database-migration skills (`reversible-migrations`, `expand-contract`, `lock-timeouts`) — **ingest level:** summarized

## Per-source extracts
- **S1:** Three skills for production database schema safety:
  1. **reversible-migrations**: Every migration ships with a down step; CI applies up → down → up before merge to validate rollback.
  2. **expand-contract**: Rename or retype columns in three releases (add new col + dual-write → backfill + switch reads → drop old col). Never rename in place.
  3. **lock-timeouts**: Set lock timeouts on every DDL statement to prevent blocked migrations from stalling production traffic.

  Claims/techniques: reversibility, phased schema changes, lock-management for production safety.

## Synthesis
- **Punchline:** Database migrations require reversibility, gradual schema changes (expand-contract pattern), and lock timeouts to prevent production stalls — standard practices for safe production schema evolution.
- Single source; no convergence/divergence.

## Confrontation with THIS repo

**Capability check:** Database/schema management → **none in this repo** (no `src/api` directory exists; codebase is frontend-only React components and pages; AGENTS.md §Layout names `src/api` but it is not implemented; guidelines/engineering.md has no database or migration rules).

| Insight | Bucket | Evidence (repo cite) |
|---------|--------|----------------------|
| Migrations need reversible down steps + CI validation | gap | AGENTS.md describes an API layer (`src/api/`), but it is not implemented; guidelines/engineering.md has no migration rules; no database code in tree |
| Schema changes should use expand-contract (3-phase pattern) | gap | No schema code in tree; no database references in AGENTS.md or guidelines |
| DDL must have lock timeouts | gap | No database / DDL code in tree |

**Live-signal check:** No relevant live signal (no database layer exists to probe; no CI checks for migration patterns yet).

## Validation of the gap points (step 4 — confirm/refute vs current evidence)
| Gap point | Verdict | Evidence (source + date) |
|-----------|---------|--------------------------|
| Reversible migrations + CI down-step validation are industry best practice for production safety | not-externally-validatable | These are consensus database-operations doctrine (no single "current best practice" to validate; widely corroborated in production ops guides, but the practice itself is timeless design principle, not an empirical claim that decays) |
| Expand-contract (3-release phased rename) prevents blocking in production | not-externally-validatable | Established pattern in database-schema-evolution literature; a design principle, not a time-bound benchmark |
| Lock timeouts on DDL prevent stalls | not-externally-validatable | Operational best practice; timeless principle, not empirical/decay-bound |

## Proposal (gaps only — ranked)  ⟶ **AWAITING APPROVAL**

**Strategic context:** The repo's AGENTS.md describes an API (`src/api/`) that does not yet exist. These proposals assume the backend is built or planned.

1. **Document database-migration patterns before API implementation** — **open** — *Title:* "Adopt migrate-safe skills: reversibility, expand-contract, lock-timeouts" / *Why:* When the Node API backend and production database are built, these patterns will be critical to safety. Codifying them now (via skills or a guideline) prevents ad-hoc migrations later. — *Verdict:* not-externally-validatable (timeless principle, not empirical).

2. **Extend guidelines/engineering.md with production-database rules** — **amend #<TBD - no existing issue yet>** — *What to add:* A section on production-database safety once the API is implemented — cover reversibility, expand-contract for renames/retypes, lock timeouts on DDL. — *Verdict:* not-externally-validatable (foundational ops principle).

---

## Recommendation

The "migrate-safe" skills are **real and well-founded** (not-externally-validatable because they are timeless design principles, not empirical claims). However, they are **not immediately actionable**: the repo has no database layer yet (src/api does not exist; codebase is frontend-only). 

**Two paths forward:**
- **Path A (low urgency):** File proposal 1 as a tracking item for "when we build the API, adopt these patterns" — archive the source in backlog as a reference.
- **Path B (now):** If API + database are planned in the next sprint/quarter, move these to the implementation queue now and file proposals 1 & 2 as blocking dependencies.

**Which shall I file on approval?**
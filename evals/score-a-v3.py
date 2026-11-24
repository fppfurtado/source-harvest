#!/usr/bin/env python3
"""Score signal A of the v3 ablation (#2356) mechanically, under BOTH readings DESIGN-v3.md records.

    python3 score-a-v3.py <out-dir>

A-read     (as pre-registered): the cell's `.reads.txt` lists a file under `skills/ux-check/`.
A-content  (amendment, DESIGN-v3.md § Amendment 1): some tool RESULT in the cell's stream carries
           text that only `skills/ux-check/` holds, whatever tool fetched it (Read, Bash cat, Grep).

The sidecar records `Read` calls only, so a cell that ran `cat skills/ux-check/rubric.md` through Bash
scores `no` on A-read while the rubric sat in its context. A-content closes that; A-read stays published.
"""
import json
import pathlib
import sys

# Strings that exist only in skills/ux-check/ (rubric.md and SKILL.md), never in the doctrine surfaces.
# run-v3.sh's fixture gate greps the doctrine surfaces for these same strings; change both together.
SENTINELS = (
    "Data-dense tables at narrow width",
    "Recognition over recall",
    "Review a built trailmap screen",
    "judge it against every",
)


def result_texts(stream):
    for line in stream.read_text().splitlines():
        try:
            obj = json.loads(line)
        except json.JSONDecodeError:
            continue
        if obj.get("type") != "user":
            continue
        content = (obj.get("message") or {}).get("content")
        if not isinstance(content, list):
            continue
        for blk in content:
            if blk.get("type") == "tool_result":
                yield json.dumps(blk.get("content"))


def main():
    if len(sys.argv) != 2:
        sys.exit("usage: score-a-v3.py <run-out-dir>")
    out = pathlib.Path(sys.argv[1])
    rows = {}
    streams = sorted(out.glob("f-cap.*.t*.stream.jsonl"))
    if not streams:  # a wrong path must not read as a real result of zero
        sys.exit(f"score-a-v3.py: no f-cap.*.t*.stream.jsonl under {out}")
    for stream in streams:
        stem = stream.name[: -len(".stream.jsonl")]
        parts = stem.split(".")
        if len(parts) != 3:
            sys.exit(f"score-a-v3.py: unexpected stream name {stream.name} (want f-cap.<arm>.<run>)")
        _, arm, run = parts
        reads_path = out / f"{stem}.reads.txt"
        if not reads_path.is_file():
            sys.exit(f"score-a-v3.py: {reads_path} is missing (each stream needs its .reads.txt)")
        reads = reads_path.read_text().splitlines()
        a_read = any(r.startswith("skills/ux-check/") for r in reads)
        a_content = any(any(s in t for s in SENTINELS) for t in result_texts(stream))
        rows.setdefault(arm, []).append((run, a_read, a_content))
    for arm in ("with", "baseline"):
        cells = sorted(rows.get(arm, []))
        for run, a_read, a_content in cells:
            print(f"{arm:8} {run}  A-read={'yes' if a_read else 'no '}  A-content={'yes' if a_content else 'no'}")
        print(f"{arm:8} total  A-read {sum(c[1] for c in cells)}/{len(cells)}  "
              f"A-content {sum(c[2] for c in cells)}/{len(cells)}")


if __name__ == "__main__":
    main()

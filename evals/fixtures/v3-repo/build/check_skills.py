#!/usr/bin/env python3
"""CI check: every skills/<name>/SKILL.md has valid YAML frontmatter with name + description,
and every skill dir carries a plugin.json manifest."""
import pathlib
import sys

import yaml

bad = []
for skill in sorted(pathlib.Path("skills").glob("*/SKILL.md")):
    text = skill.read_text()
    if not text.startswith("---\n"):
        bad.append(f"{skill}: no frontmatter")
        continue
    meta = yaml.safe_load(text.split("---\n", 2)[1]) or {}
    for key in ("name", "description"):
        if key not in meta:
            bad.append(f"{skill}: missing {key}")
    if not (skill.parent / "plugin.json").exists():
        bad.append(f"{skill.parent}: missing plugin.json")
print("\n".join(bad) or "ok")
sys.exit(1 if bad else 0)

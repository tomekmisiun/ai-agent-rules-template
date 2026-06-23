# AI Coding-Agent System Export

Portable snapshot of the **Appointment Voice SaaS** repository's AI-assisted development system.

## What this package contains

- **Exact copies** of dedicated AI rules, tool adapters, agent personas, commands, hooks, scripts, and workflow documentation under `source-tree/`
- **Integration snippets** for mixed files (`Makefile`, CI, pre-commit, `README.md`)
- **Portability and coupling analysis** for importing into another repository
- **Manifest, dependency map, verification report, and checksums**

## What this package does not contain

- Application source code (`app/`, `tests/`, `alembic/`)
- Product documentation (roadmap, domain model, feature specs)
- Full CI workflow files (only AI-related snippets)
- Full `Makefile` or `README.md` (only relevant excerpts)
- External CLI binaries (`claude`, `codex`)
- Git history

## Directory structure

```text
appointment-voice-saas-ai-system-export/
├── source-tree/              # Byte-for-byte copies, original paths preserved
├── integration-snippets/     # Excerpts from mixed repo files
├── MANIFEST.md
├── DEPENDENCY_MAP.md
├── PROJECT_COUPLING.md
├── PORTABILITY.md
├── EXCLUDED_CANDIDATES.md
├── VERIFICATION.md
├── CHECKSUMS.sha256
└── README.md
```

## Source provenance

| Field | Value |
| ----- | ----- |
| Repository | appointment-voice-saas-ai-export-source |
| Commit | e4495b7ffdd9d77b6ff267d9f4e46a572ad615c0 |
| Branch | detached HEAD (no named branch at export time) |
| Export date | 2026-06-23 |
| Export location | `_exports/appointment-voice-saas-ai-system-export/` (in-repo fallback; sibling path not writable from sandbox) |

## Full copies vs integration snippets

- **Full copies** in `source-tree/` are dedicated AI files safe to drop into another repo preserving paths.
- **Integration snippets** document lines that must be merged into existing `Makefile`, CI, pre-commit, or README files — they are not standalone replacements.

## Universal vs tool-specific

| Universal | Tool-specific |
| --------- | ------------- |
| `.ai-rules/` (binding rules) | `AGENTS.md` (Codex) |
| `agents/`, `.commands/` | `CLAUDE.md` (Claude Code) |
| `scripts/validate-ai-workflows.sh` | `.cursor/rules/*.mdc` (Cursor) |
| `docs/ai-workflows.md` | `.claude/settings.json`, hooks, agents |
| Cross-provider script (needs CLI) | |

See `PORTABILITY.md` for the full matrix.

## Intentional non-adaptation

This export is a **read-only inventory**. No rules were rewritten, merged, or tailored for another project. See `PROJECT_COUPLING.md` before importing.

## Recommended next steps for import

1. Copy `source-tree/` contents into target repository root (preserve paths).
2. Apply `integration-snippets/` to `Makefile`, CI, pre-commit, and README.
3. Run `bash scripts/validate-ai-workflows.sh` and fix any path/list mismatches.
4. Edit `PROJECT_COUPLING.md` items for target product name, paths, and docs.
5. Install pre-commit commit-msg hook: `uv run pre-commit install --hook-type commit-msg`.
6. Verify `claude` and/or `codex` CLI availability if using cross-provider review.

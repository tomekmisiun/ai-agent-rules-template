# Reference Material (Read-Only)

This directory contains an **immutable export** of the AI coding-agent system from
the source application repository. It is **not** active configuration.

## Source

| Field | Value |
| ----- | ----- |
| Source repository | [tomekmisiun/appointment-voice-saas](https://github.com/tomekmisiun/appointment-voice-saas) |
| Source commit | `e4495b7ffdd9d77b6ff267d9f4e46a572ad615c0` |
| Export date | 2026-06-23 |
| Archive | `reference/appointment-voice-saas-ai-system-export.tar.gz` |

## Checksum verification

Verify from `reference/source-export/source-tree`:

```bash
cd reference/source-export/source-tree && sha256sum -c ../CHECKSUMS.sha256
```

All 63 files under `source-tree/` must report `OK`.

## Why reference files are not active rules

- They contain product-specific paths, roadmap names, and stack assumptions.
- Active files in the repository root were **adapted** for reuse (see `docs/SOURCE_MANIFEST.md` and `docs/GENERICIZATION_REPORT.md`).
- Agents and validation MUST use root `.ai-rules/`, not `reference/source-export/`.

## Derivation

Active configuration was created by:

1. Reading export analysis (`PROJECT_COUPLING.md`, `PORTABILITY.md`, `MANIFEST.md`)
2. Genericizing universal rules and tool adapters
3. Excluding application runtime code and product-only commands/agents
4. Expanding static validation for the template repository

Do not modify files under `reference/` when maintaining this template.

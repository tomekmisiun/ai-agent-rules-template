# AI Agent Rules Template

Reusable AI coding-agent rules for **Cursor**, **Claude Code**, and **Codex CLI**.

## Problem this solves

Teams need consistent agent behavior across tools: explicit task scope, builder/reviewer
separation, git safety, security review, and validation — without duplicating rule
bodies in every tool-specific file.

## Supported tools

| Tool | Entry point |
|------|-------------|
| Cursor | `.cursor/rules/project.mdc` (+ glob rules) |
| Claude Code | `CLAUDE.md`, `.claude/agents/code-reviewer.md` |
| Codex CLI | `AGENTS.md` |

Shared source of truth: **`.ai-rules/`**

## Repository structure

```text
.ai-rules/          # Universal binding rules (edit here)
.cursor/rules/      # Cursor adapters (pointers + globs)
.claude/agents/     # Claude subagents
.commands/          # Reusable prompt templates
agents/             # Optional review personas
scripts/            # Validation and cross-provider review
docs/               # Installation, adaptation, architecture
reference/          # Immutable export from source project (read-only)
```

## Quick installation

```bash
git clone https://github.com/tomekmisiun/ai-agent-rules-template.git
cd ai-agent-rules-template
make validate
```

To adopt into another repository, copy the active directories and root entry files,
then follow `docs/ADAPTATION_CHECKLIST.md`.

## Adaptation

Replace placeholders in `.ai-rules/context-map.md`, `.ai-rules/validation.md`, and
Cursor globs with your project layout. See `docs/INSTALLATION.md`.

## Validation

```bash
make validate
```

Runs static checks only — no external AI CLIs are invoked.

## Known limitations

- Cross-provider review requires locally installed `claude` and/or `codex` CLIs.
- Cursor cannot always spawn cross-provider reviewers automatically; use handoff docs.
- Model names are not hardcoded; configure via environment variables (see `docs/CROSS_PROVIDER_REVIEW.md`).
- This template does not include application runtime code or CI for your app.

## External dependencies

- `bash` for validation and review scripts
- Optional: Claude Code CLI, Codex CLI for cross-provider review
- Optional: `gh` for GitHub operations

## Documentation

- [Architecture](docs/ARCHITECTURE.md)
- [Installation](docs/INSTALLATION.md)
- [Adaptation checklist](docs/ADAPTATION_CHECKLIST.md)
- [Cursor](docs/CURSOR.md) · [Claude Code](docs/CLAUDE_CODE.md) · [Codex CLI](docs/CODEX_CLI.md)

## Provenance

Derived from export documented in `reference/README.md`. Reference files are not active rules.

## License

See repository license (add when publishing).

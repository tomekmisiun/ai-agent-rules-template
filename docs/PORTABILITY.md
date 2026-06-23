# Portability

| Asset | Universal | Cursor | Claude Code | Codex CLI | External dependency |
| ----- | --------: | -----: | ----------: | --------: | ------------------- |
| `.ai-rules/*.md` | ✓ | ✓ | ✓ | ✓ | None |
| `agents/*.md` | ✓ | optional | optional | optional | None |
| `.commands/*.md` | ✓ | optional | optional | optional | None |
| `scripts/validate-ai-workflows.sh` | ✓ | ✓ | ✓ | ✓ | `bash` |
| `scripts/ai/invoke-cross-reviewer.sh` | — | manual | ✓ | ✓ | `claude` and/or `codex` CLI |
| `.cursor/rules/*.mdc` | — | ✓ | — | — | Cursor IDE |
| `CLAUDE.md` | — | pointer | ✓ | — | Claude Code |
| `AGENTS.md` | — | pointer | — | ✓ | Codex CLI |
| `.claude/agents/code-reviewer.md` | — | — | ✓ | — | Claude Code subagents |
| `docs/ai-workflows.md` | ✓ | ✓ | ✓ | ✓ | None |
| `reference/` | — | — | — | — | None (read-only provenance) |

## Adoption effort

| Category | Effort |
|----------|--------|
| Copy unchanged | `anti-overengineering.md`, review checklist structure, git safety |
| Light edits | `validation.md`, `context-map.md`, Cursor globs |
| Target-specific | Application paths, test commands, optional tenancy/worker rules |

See `docs/ADAPTATION_CHECKLIST.md`.

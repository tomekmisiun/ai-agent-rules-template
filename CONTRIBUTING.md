# Contributing

1. Edit binding rules in `.ai-rules/` first.
2. Update tool adapters (`AGENTS.md`, `CLAUDE.md`, `.cursor/rules/`) as indexes only — do not duplicate rule bodies.
3. Run `make validate` before opening a PR.
4. Do not modify files under `reference/` (immutable source evidence).
5. Do not add application runtime code to this template repository.

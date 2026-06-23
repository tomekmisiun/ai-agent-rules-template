# Contributing

## Before you open a PR

1. Edit binding rules in `.ai-rules/` first.
2. Update tool adapters (`AGENTS.md`, `CLAUDE.md`, `.cursor/rules/`) as indexes only — do not duplicate rule bodies.
3. Run `make validate` before opening a PR.
4. Do not modify files under `reference/` (immutable source evidence).
5. Do not add application runtime code to this template repository.

## Reporting bugs

Use **[GitHub Issues](https://github.com/tomekmisiun/ai-agent-rules-template/issues/new/choose)** and select **Bug report**.

Include:

- what rule, script, or doc is wrong;
- how to reproduce (tool: Cursor, Claude Code, or Codex CLI);
- expected vs actual behavior;
- output of `make validate` if relevant;
- template version or commit (`git rev-parse --short HEAD`).

Do **not** paste API keys, tokens, or private repository paths.

### What counts as a bug here

- Incorrect or contradictory instructions in `.ai-rules/`
- Broken links, missing files caught by users (not by `make validate`)
- Cursor frontmatter or glob rules that do not load as documented
- `scripts/validate-ai-workflows.sh` or `invoke-cross-reviewer.sh` behavior that contradicts docs
- Genericization gaps (leftover product-specific coupling in active files)

### What is usually not a bug in this repo

- Behavior of your application code in a consumer repository
- Missing rules for a stack this template does not ship (e.g. tenancy) — use [Adaptation checklist](docs/ADAPTATION_CHECKLIST.md) or open a feature discussion
- Claude/Codex CLI not installed locally

## Versioning and upstream

This template is **v1.0** and **backported** from rules maintained in the actively developed [appointment-voice-saas](https://github.com/tomekmisiun/appointment-voice-saas) project. The live project may change first; this repository receives periodic exports and genericization updates. See [CHANGELOG.md](CHANGELOG.md).

## Proposing rule changes

1. Open an issue or discuss the change (optional but helpful for large edits).
2. Branch from `main`.
3. Change `.ai-rules/` first, then adapters and docs.
4. Run `make validate`.
5. Open a PR with a short summary and test plan (`make validate` result).

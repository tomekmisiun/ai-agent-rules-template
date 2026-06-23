# Changelog

All notable changes to this template are documented here.

Format loosely follows [Keep a Changelog](https://keepachangelog.com/). Versioning
is semantic for the **template package** (rules + adapters + validation), not for
the upstream application repository.

## [1.0.1] - 2026-06-23

### Added

- MIT [LICENSE](LICENSE)
- GitHub bug report issue template and issue chooser config
- README sections: upstream backport policy, v1.0.0, support links
- CONTRIBUTING: how to report bugs and what counts as a template bug

### Changed

- Validator allows intentional upstream name in README/CONTRIBUTING/CHANGELOG

## [1.0.0] - 2026-06-23

First public generic release (backport from appointment-voice-saas export `e4495b7`).

### Added

- Universal rules in `.ai-rules/` (22 files)
- Cursor, Claude Code, and Codex CLI entry points
- Cross-provider review script and static validation (`make validate`)
- Documentation, adaptation checklist, provenance under `reference/`
- Expanded README (workflow, rules inventory, assumptions)

### Notes

- Rules originate from an actively developed project; expect periodic updates.

## Unreleased

Nothing yet.

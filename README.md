# AI Agent Rules Template

Reusable AI coding-agent rules for **Cursor**, **Claude Code**, and **Codex CLI**.

**Version:** 1.0.1 · [Changelog](CHANGELOG.md) · [Report a bug](https://github.com/tomekmisiun/ai-agent-rules-template/issues/new?template=bug_report.yml)

This repository is not a library you import at runtime. It is a **policy and workflow
system** that tells coding agents how to work: what to read before editing, how to
scope tasks, when to write tests, how to hand off for review, and when they may touch
git remotes.

## Origin and release policy

These rules are a **backport** of AI workflow policy maintained in the actively
developed [appointment-voice-saas](https://github.com/tomekmisiun/appointment-voice-saas)
project. That application repo is the day-to-day source of truth; this template is a
**genericized, tool-portable snapshot** for reuse in other repositories.

| | |
|-|-|
| **This template** | v**1.0.1** — generic release line; see [CHANGELOG](CHANGELOG.md) |
| **Updates** | Planned as the upstream project evolves (bugfixes, new rules, adapter tweaks) |
| **Evidence** | Frozen export under `reference/` (commit `e4495b7`) for provenance |

When reporting problems, say whether you also see them in the upstream project — it
helps decide if a fix belongs here, there, or in both. See [Contributing](CONTRIBUTING.md#reporting-bugs).

## Problem this solves

Without shared rules, each AI tool invents its own habits:

- scope creeps across unrelated files,
- commits land without tests or review,
- security and architecture checks are skipped,
- the same policy is copy-pasted into `AGENTS.md`, `CLAUDE.md`, and Cursor rules and
  drifts out of sync.

This template keeps **one source of truth** (`.ai-rules/`) and thin adapters per tool.
Agents are steered toward predictable, reviewable, production-minded work.

## What these rules actually enforce

The rules are binding instructions for agents, not suggestions for humans only.

| Area | What agents must do |
|------|---------------------|
| **Task start** | Classify the task, read relevant `.ai-rules/`, define in/out of scope |
| **Scope** | One logical task per branch; no drive-by refactors or unrelated edits |
| **Planning** | Non-trivial work gets a spec and task breakdown before large diffs |
| **Implementation** | Thin vertical slices with validation after each slice |
| **Testing** | New behavior and bug fixes get tests; no deleting tests to green CI |
| **Review** | Builder runs a read-only Reviewer before the final response (non-trivial changes) |
| **Git** | No commit/push/merge without explicit user `approve`; no AI co-author trailers |
| **Security** | No secrets in repo; auth and validators must not be weakened casually |
| **Documentation** | Docs and status files reflect verified behavior only |
| **Completion** | Structured final report: files, validation, risks, reviewer verdict |

Mechanical enforcement is limited to **static validation** (`make validate`). Behavioral
enforcement depends on the agent following `.ai-rules/` — that is the intended model.

## Workflow the agents follow

Every non-trivial task is meant to run through this loop:

```text
1. Orient      → agent-orchestration.md + context-map.md
2. Scope       → objective, in/out of scope, assumptions
3. Plan        → spec + task cards (when non-trivial)
4. Build       → incremental slices + targeted validation
5. Review      → cross-provider or fallback Reviewer (read-only)
6. Report      → learning-mode completion format + reviewer verdict
7. Git         → only after explicit user approve
```

### Builder / Reviewer separation

The **Builder** implements. The **Reviewer** inspects the diff read-only and returns a
structured verdict. They should prefer **different providers** when possible (e.g. Codex
builds, Claude reviews) to reduce shared blind spots.

| Builder tool | Review first | Fallback |
|--------------|--------------|----------|
| Codex CLI | `invoke-cross-reviewer.sh claude` | `invoke-cross-reviewer.sh codex` |
| Claude Code | `invoke-cross-reviewer.sh codex` | `.claude/agents/code-reviewer.md` |
| Cursor | cross-reviewer script if available | `.commands/builder-handoff.md` + manual CLI |

Reviewer output uses fixed sections from `.ai-rules/review-checklist.md` (Blockers,
Should-fix, Final verdict, etc.). The Builder must **not** apply review fixes without
user approval.

See [Two-agent review workflow](docs/two-agent-review-workflow.md) and
[Cross-provider review](docs/CROSS_PROVIDER_REVIEW.md).

## Architecture: one truth, many entry points

```text
.ai-rules/                 ← binding rules (edit here)
    ↑
    ├── .cursor/rules/*.mdc   (Cursor: globs + pointers)
    ├── CLAUDE.md             (Claude Code index)
    ├── AGENTS.md             (Codex CLI index)
    ├── .commands/*.md        (optional prompt templates)
    └── agents/*.md           (optional review personas)
```

Adapters **must not** duplicate rule bodies. They point agents to `.ai-rules/` and
workflow docs. If policy changes, update `.ai-rules/` once.

## What is inside `.ai-rules/`

22 universal rule files. Grouped by role:

### Orchestration and process

| File | Purpose |
|------|---------|
| `agent-orchestration.md` | **Start here.** Task classification, scope, validation choice, review tree, completion report |
| `context-map.md` | Task type → which other rules and paths to read |
| `planning-and-task-breakdown.md` | Task cards, ordering, one-PR-per-logical-change |
| `incremental-work.md` | Thin slices, validation cadence, no mixed concerns |
| `spec-driven-development.md` | When and how to write specs before code |
| `learning-mode.md` | Required completion report sections (mentor-style) |
| `validation.md` | Which commands to run (placeholder until you adapt) |

### Code quality and design

| File | Purpose |
|------|---------|
| `architecture.md` | Layering, dependencies, where logic belongs |
| `api.md` | HTTP/API handler conventions |
| `database.md` | Migrations, models, transactions |
| `testing.md` | Test integrity and layout |
| `tdd-and-regression.md` | Failing-test-first for bugs; regression guards |
| `anti-overengineering.md` | Prefer simplicity; do not skip safety for “less code” |
| `workers.md` | Background jobs (optional; for repos with queues) |

### Review and safety

| File | Purpose |
|------|---------|
| `review.md` | Pre-merge checklist for Builder/human |
| `review-checklist.md` | **Reviewer-only** output format and inspection list |
| `security.md` | Secrets, auth, production validators |
| `threat-modeling.md` | Mini threat model for sensitive changes |

### Repository hygiene

| File | Purpose |
|------|---------|
| `repository.md` | Scope boundaries, config hygiene, no drive-by edits |
| `git.md` | Branches, commits, approve gate, no AI attribution trailers |
| `documentation.md` | README/docs accuracy; no invented features |
| `docker.md` | Container and compose safety |
| `model-routing.md` | Model tier guidance; env-based reviewer model selection |

## Optional layers (not binding by default)

| Layer | Role |
|-------|------|
| `.commands/` | Copy-paste prompts: spec, plan, branch review, security audit, builder handoff |
| `agents/` | Personas for focused review (backend, database, security, DevOps/CI) |
| `scripts/ai/invoke-cross-reviewer.sh` | Optional cross-provider review CLI wrapper |
| `docs/specs/` | Convention for feature specs |

## Supported tools

| Tool | Entry point | How rules load |
|------|-------------|----------------|
| Cursor | `.cursor/rules/project.mdc` (`alwaysApply: true`) | Auto-loaded; glob rules when paths match |
| Claude Code | `CLAUDE.md` | Loaded at session start; points to `.ai-rules/` |
| Codex CLI | `AGENTS.md` | Loaded at session start; points to `.ai-rules/` |

Cursor glob rules (`backend.mdc`, `testing.mdc`, `docker.mdc`, etc.) activate when you
open matching files. They are pointers — agents still need to open the referenced
`.ai-rules/` files.

Details: [Cursor](docs/CURSOR.md) · [Claude Code](docs/CLAUDE_CODE.md) ·
[Codex CLI](docs/CODEX_CLI.md)

## Assumptions and design choices

These assumptions are baked into the template. Adapt or remove them when copying into
your repository.

1. **Human in the loop for git remotes** — agents draft work locally but need explicit
   `approve` before commit, push, or merge.
2. **Feature branches** — one task per branch unless the user says otherwise.
3. **Cross-provider review is preferred** — same-model review is a fallback, not the
   default for non-trivial diffs.
4. **Diff-first review** — reviewers start from `git diff`, not full-repo scans.
5. **No hardcoded model IDs** — reviewer models come from env vars or CLI defaults
   (`AI_REVIEW_MODEL`, `CLAUDE_REVIEW_MODEL`, `CODEX_REVIEW_MODEL`).
6. **No application stack baked in** — paths like `<API_ROUTES_DIR>` are placeholders;
   you fill them via `docs/ADAPTATION_CHECKLIST.md`.
7. **Static validation only in CI** — `make validate` checks files, links, frontmatter,
   and forbidden coupling; it does not call paid AI APIs.
8. **Policy over automation** — many rules (review quality, scope discipline) rely on
   agent compliance, not CI gates.
9. **English rule bodies** — adapters and docs match; localize in your fork if needed.
10. **Reference export is read-only** — `reference/` is provenance, not active config.

What this template **does not** assume:

- a specific language, framework, or test runner,
- multi-tenancy (add your own rules if needed),
- a fixed backlog file name (`ROADMAP.md`, Jira, etc.),
- that Claude or Codex CLI is installed,
- auto-merge or auto-push without human approval.

## Repository structure

```text
.ai-rules/          # Universal binding rules (edit here)
.cursor/rules/      # Cursor adapters (pointers + globs)
.claude/agents/     # Claude subagents
.commands/          # Reusable prompt templates
agents/             # Optional review personas
scripts/            # Validation and cross-provider review
docs/               # Installation, adaptation, architecture
examples/           # e.g. ai-review.env.example
reference/          # Immutable export from source project (read-only)
```

## Quick installation

```bash
git clone https://github.com/tomekmisiun/ai-agent-rules-template.git
cd ai-agent-rules-template
make validate
```

To adopt into another repository, copy the active directories and root entry files,
then follow [Adaptation checklist](docs/ADAPTATION_CHECKLIST.md).

## Adaptation

Before agents can run application work in your repo, customize at minimum:

- `.ai-rules/validation.md` — real test, lint, and CI commands
- `.ai-rules/context-map.md` — real directory paths
- `.cursor/rules/*.mdc` — globs matching your layout

See [Installation](docs/INSTALLATION.md).

## Validation

```bash
make validate
```

Checks: required rule files, Cursor frontmatter, cross-references, shell syntax,
forbidden product-specific coupling, broken markdown links, no secrets or home paths.
Does **not** invoke Claude, Codex, or Cursor.

## Known limitations

- Cross-provider review requires locally installed `claude` and/or `codex` CLIs.
- Cursor cannot always spawn cross-provider reviewers automatically; use handoff docs.
- Model names are not hardcoded; configure via environment variables.
- This template does not include application runtime code or your app's CI.
- Commit-trailer guards from the source export are documented but not bundled; add in
  consumer repos if desired.

## External dependencies

- `bash` for validation and review scripts
- Optional: Claude Code CLI, Codex CLI for cross-provider review
- Optional: `gh` for GitHub operations

## Documentation

- [Architecture](docs/ARCHITECTURE.md) — how layers connect
- [AI workflows](docs/ai-workflows.md) — day-to-day agent index
- [Installation](docs/INSTALLATION.md)
- [Adaptation checklist](docs/ADAPTATION_CHECKLIST.md)
- [Portability](docs/PORTABILITY.md) — what works where
- [Source manifest](docs/SOURCE_MANIFEST.md) · [Genericization report](docs/GENERICIZATION_REPORT.md)

## Provenance

Rules were extracted and genericized from [appointment-voice-saas](https://github.com/tomekmisiun/appointment-voice-saas) (export commit `e4495b7`). Full audit trail: [reference/README.md](reference/README.md). Files under `reference/source-export/` are read-only evidence, not active configuration.

Upstream may advance before this template; watch [releases](https://github.com/tomekmisiun/ai-agent-rules-template/releases) and [CHANGELOG.md](CHANGELOG.md) for updates.

## Support

- **Bugs** — [open an issue](https://github.com/tomekmisiun/ai-agent-rules-template/issues/new?template=bug_report.yml) (use the bug report template)
- **Contributing** — [CONTRIBUTING.md](CONTRIBUTING.md)

## License

MIT — see [LICENSE](LICENSE).

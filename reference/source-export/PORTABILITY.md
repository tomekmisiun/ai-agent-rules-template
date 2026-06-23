# Portability Assessment

| Asset | Universal | Claude Code | Codex CLI | Cursor | Project-specific changes required |
| ----- | --------: | ----------: | --------: | -----: | --------------------------------- |
| `.ai-rules/anti-overengineering.md` | ✓ | ✓ | ✓ | ✓ | Minimal — general principles |
| `.ai-rules/agent-orchestration.md` | ✓ | ✓ | ✓ | ✓ | Product name, roadmap paths, validation table |
| `.ai-rules/model-routing.md` | ✓ | ✓ | ✓ | ✓ | Model IDs, task examples tied to this stack |
| `.ai-rules/review-checklist.md` | ✓ | ✓ | ✓ | ✓ | Minor — validation command names |
| `.ai-rules/git.md` | ✓ | ✓ | ✓ | ✓ | Default branch name |
| `.ai-rules/context-map.md` | partial | ✓ | ✓ | ✓ | Extensive path remapping |
| `.ai-rules/architecture.md` … `workers.md` | partial | ✓ | ✓ | ✓ | FastAPI/tenancy/Compose-specific |
| `AGENTS.md` | — | ✓ | — | pointer | Index only; Codex CLI loads this |
| `CLAUDE.md` | — | ✓ | — | pointer | Index only; Claude Code loads this |
| `.cursor/rules/*.mdc` | — | — | — | ✓ | Cursor auto-loads; pointers to `.ai-rules/` |
| `.claude/settings.json` | — | ✓ | — | — | Claude Code Stop hook config |
| `.claude/hooks/codex-stop-review.sh` | — | ✓ | — | — | Requires `codex` CLI on PATH |
| `.claude/agents/code-reviewer.md` | — | ✓ | — | subagent | Claude native Reviewer fallback |
| `agents/*.md` | ✓ | optional | optional | optional | Domain paths (FastAPI, tenancy, CI) |
| `.commands/*.md` | ✓ | optional | optional | optional | Several reference ROADMAP/status docs |
| `scripts/ai/invoke-cross-reviewer.sh` | — | ✓ | ✓ | manual | Requires `claude` and/or `codex` CLI |
| `scripts/validate-ai-workflows.sh` | ✓ | ✓ | ✓ | ✓ | Path list if layout differs |
| `scripts/ci/check_no_ai_commit_trailers.sh` | ✓ | ✓ | ✓ | ✓ | Depends on `_lib.sh`, git |
| `docs/ai-workflows.md` | ✓ | ✓ | ✓ | ✓ | Template doc links |
| `docs/two-agent-review-workflow.md` | ✓ | ✓ | ✓ | ✓ | References this repo's Makefile/CI |
| `docs/ci-policy-guards.md` | partial | ✓ | ✓ | ✓ | Mixes AI and app-specific guards |
| Makefile snippets | — | — | — | — | Must recreate targets |
| CI workflow snippets | — | — | — | — | Must recreate `policy-guards` job |
| pre-commit snippet | — | — | — | — | Must add `block-ai-trailers` hook |

## 1. Copy unchanged into another Python/FastAPI repository

- `.ai-rules/anti-overengineering.md`
- `.ai-rules/review-checklist.md`
- `.ai-rules/spec-driven-development.md`, `planning-and-task-breakdown.md`, `incremental-work.md`, `tdd-and-regression.md`, `review.md`, `threat-modeling.md` (after light path edits)
- `.commands/spec.md`, `plan.md`, `builder-handoff.md`, `two-agent-review.md`, `security-audit.md`
- `scripts/validate-ai-workflows.sh` (after updating required file list if needed)
- `scripts/ci/lib_ai_commit_trailers.sh`
- `docs/two-agent-review-workflow.md`, `docs/ai-workflows.md` (after link updates)
- `agents/security-auditor.md` (most stack-agnostic persona)

## 2. Requires path or command changes

- `.ai-rules/context-map.md` — remap all `app/`, `tests/`, `alembic/` paths
- `.ai-rules/agent-orchestration.md` — product identity and validation command table
- `agents/backend-reviewer.md`, `database-reviewer.md`, `tenancy-reviewer.md`, `devops-ci-reviewer.md`
- `.commands/build-next-roadmap-task.md`, `update-project-status.md`
- `scripts/ci/check_no_ai_commit_trailers.sh` + `scripts/ci/_lib.sh` — default branch
- Integration snippets for `Makefile`, CI, pre-commit, `README.md`

## 3. Claude Code only

- `CLAUDE.md` (entry index loaded by Claude Code)
- `.claude/settings.json` (Stop hook registration)
- `.claude/hooks/codex-stop-review.sh` (runs on session stop)
- `.claude/agents/code-reviewer.md` (native Reviewer subagent fallback)
- `scripts/ai/invoke-cross-reviewer.sh claude` path (requires `claude -p` CLI)

## 4. Codex CLI only

- `AGENTS.md` (entry index loaded by Codex CLI)
- `scripts/ai/invoke-cross-reviewer.sh codex` path (native `codex review --uncommitted`)
- Note: `.codex/agents/reviewer.toml` was **removed** from this repo; Codex review uses native CLI only

## 5. Cursor loads automatically

- `.cursor/rules/project.mdc` (`alwaysApply: true` — main entry)
- `.cursor/rules/ponytail.mdc` (`alwaysApply: true`)
- Other `.cursor/rules/*.mdc` when glob patterns match open files

## 6. Cursor must be explicitly instructed to read

- Full `.ai-rules/**` bodies (wrappers are pointers only)
- `docs/ai-workflows.md`, `docs/two-agent-review-workflow.md`
- `.commands/**`, `agents/**` (optional prompts/personas)
- `AGENTS.md` / `CLAUDE.md` (not auto-loaded by Cursor unless user adds them)

## 7. Depends on installed external CLI

| Dependency | Used by |
| ---------- | ------- |
| `claude` (Claude Code CLI, `claude -p`) | `invoke-cross-reviewer.sh claude`, optional hook |
| `codex` (Codex CLI, `codex review`, `codex exec`) | `invoke-cross-reviewer.sh codex`, `.claude/hooks/codex-stop-review.sh` |
| `git` | All review and trailer scripts |
| `bash`, `python3` | Hooks and cross-reviewer output parsing |
| `uv` + `pre-commit` | Hook install per `docs/ai-workflows.md` |

## 8. Documentation only (no mechanical enforcement)

- `agents/*.md` personas (unless explicitly loaded by agent)
- `.commands/*.md` prompt templates
- `docs/ai-workflows.md` (index; enforcement via `validate-ai-workflows.sh` for file presence only)
- `docs/two-agent-review-workflow.md`
- `PORTABILITY.md`, `PROJECT_COUPLING.md`, this export's meta docs
- `.ai-rules/model-routing.md` — guidance only; CI cannot verify model used

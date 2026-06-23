# Excluded Candidates

Files and paths that matched discovery searches but were **not** copied into `source-tree/`. Each exclusion is intentional.

## Application / product runtime (keyword false positives)

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `app/**` | — | Application runtime code; no coding-agent configuration |
| `tests/**` | — | Application tests, not AI workflow |
| `alembic/**` | — | Database migrations |
| `docker-compose*.yml`, `Dockerfile` | docker rules reference | Runtime/deployment, not AI system files |

## Product documentation (mentions `agent` or `validate-ai` incidentally)

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `docs/appointment-saas-roadmap.md` | `make validate-ai-workflows` in verification column | Product backlog, not AI system definition |
| `docs/product-scope.md` | — | Product scope doc |
| `docs/domain-model.md` | glob `*ai*` | Domain vocabulary, not coding agents |
| `docs/audits/p3-remaining-backlog-audit.md` | glob `*ai*` | Product audit |
| `docs/audits/pre-p3-readiness-audit.md` | `validate-ai-workflows` mention | Product readiness audit |
| `docs/pitr-and-scheduled-backups.md` | "orchestration layer" | Backup orchestration, not agent orchestration |
| `docs/specs/ivr-reschedule.md` | under `docs/specs/` | Product feature spec, not AI workflow spec |
| `docs/foundation/**` | template-freeze mentions AI rules | Archived foundation docs |
| `docs/template-onboarding.md` | AI rules row in table | Human template onboarding; agent workflow covered by `.ai-rules/template-onboarding.md` |
| `docs/template-usage.md` | — | Template usage, not AI system |
| `docs/commands.md` | `validate-ai-workflows` in command list | Makefile command reference doc (snippet captured via README/Makefile) |
| `docs/learning/**` | optional index in AGENTS.md | Codebase learning maps; optional for agents, not part of AI system export |
| `docs/decisions/**`, `docs/adr/**` | optional index | Architecture decision records |
| `PROJECT_STATUS.md`, `ROADMAP.md`, `TECH_DEBT.md` | referenced by commands/rules | Product tracking, not AI system files |
| `TEMPLATE_FREEZE_CHECKLIST.md` | template-onboarding refs | Template checklist |

## Mixed CI / scripts (non-AI primary purpose)

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `scripts/ci/run_policy_guards.sh` | calls validate-ai-workflows | Mixed runner; AI lines captured in `integration-snippets/github-workflows.md` |
| `scripts/ci/check_model_migration_pair.sh` | in policy guards | App migration policy, not AI |
| `scripts/ci/check_pyproject_lock_pair.sh` | in policy guards | Lockfile policy |
| `scripts/ci/check_migration_drops.sh` | in policy guards | Migration safety |
| `scripts/ci/check_ci_gate_regression.sh` | in policy guards | CI gate regression |
| `scripts/hooks/check_no_env_files.sh` | under `scripts/hooks/` | Env file blocking, not AI |
| `scripts/hooks/check_pyproject_lock_staged.sh` | pre-commit | Lockfile staging check |
| `scripts/ci/check_no_ai_commit_trailers.sh` dependency only | — | **Included** in export (AI-specific) |

## CI workflows (not primarily AI)

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `.github/workflows/ci.yml` (full file) | `policy-guards` job | Mixed CI; AI job captured as snippet |
| `.github/workflows/release.yml` | — | Release automation |
| `.github/workflows/deploy.yml` | — | Deployment |
| `.github/workflows/backup-rehearsal.yml` | — | Backup |
| `.github/workflows/scheduled-backup.yml` | — | Backup |
| `.github/workflows/dependency-review.yml` | — | Dependency review |
| `.github/workflows/load-threshold.yml` | — | Load testing |

## Configuration (no AI-specific content or snippet sufficient)

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `pyproject.toml` | — | Python project config; no AI workflow targets |
| `.gitignore` | scanned by validate-ai-workflows for stale refs | No AI rules to export |
| `Makefile` (full) | validate-ai targets | Mixed; snippets in `integration-snippets/Makefile.md` |
| `README.md` (full) | AI mentions | Mixed; snippets in `integration-snippets/README.md` |
| `.pre-commit-config.yaml` (full) | block-ai-trailers hook | Mixed; snippet in `integration-snippets/pre-commit-config.md` |

## Removed / historical references (documented only)

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `.codex/agents/reviewer.toml` | mentioned in `docs/two-agent-review-workflow.md` | **Removed from repository**; documented as obsolete |
| `scripts/ai-two-agent.sh` | guarded against by validator | **Must not exist** — stale local runner |
| `make ai-two-agent`, `make ai-review` | stale runner terms | **Must not exist** |

## Cursor / IDE outside `.cursor/rules`

| Path | Match reason | Why excluded |
| ---- | ------------ | ------------ |
| `.cursor/rules` parent config | — | Only `.cursor/rules/*.mdc` are AI rule wrappers; no other Cursor config found |

## Total excluded candidate count

**47** distinct paths/groups listed above (excluding items already captured as integration snippets).

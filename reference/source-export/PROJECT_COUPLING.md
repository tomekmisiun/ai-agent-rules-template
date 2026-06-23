# Project-Specific Coupling

Files in this export that assume **Appointment Voice SaaS** (`appointment-voice-saas`) or its inherited FastAPI foundation layout. Adapt these when importing into another repository.

| Source file | Coupling | Why it is project-specific | Required adaptation |
| ----------- | -------- | -------------------------- | ------------------- |
| `.ai-rules/agent-orchestration.md` | Product identity, roadmap paths | Names "Appointment Voice SaaS", `docs/appointment-saas-roadmap.md`, `AVS-Exxx` items, `PROJECT_STATUS.md`, `ROADMAP.md` | Replace product name, roadmap/status doc paths, and task classification examples |
| `.ai-rules/context-map.md` | Application paths | Hardcodes `app/api/routes/`, `app/services/`, `alembic/versions/`, `tests/test_*.py`, `docs/tenant-isolation.md` | Remap to target repo layout and test naming |
| `.ai-rules/architecture.md` | FastAPI layer layout | References `app/` package structure, service/route separation | Adjust paths and layer names for target stack |
| `.ai-rules/api.md` | API versioning | Assumes `/api/v1`, FastAPI routers in `app/api/v1.py` | Update version prefix and router registration paths |
| `.ai-rules/database.md` | SQLAlchemy/Alembic | `app/models/`, `alembic/versions/`, migration policy scripts | Point to target ORM/migration layout |
| `.ai-rules/tenancy.md` | Multi-tenant model | `tenant_id`, `X-Tenant-Slug`, tenant context dependencies | Replace or remove if target app is not multi-tenant |
| `.ai-rules/workers.md` | Redis job queue | `app/worker.py`, `app/core/job_queue.py` | Adapt to target background job system |
| `.ai-rules/docker.md` | Compose services | `docker compose`, service names (`api`, etc.) | Update Compose service names and commands |
| `.ai-rules/testing.md` | pytest + coverage | `make validate` via Docker, `--cov-fail-under=85` | Wire to target test runner and coverage policy |
| `.ai-rules/git.md` | Branch names | References `main`, `origin/main` in guard examples | Update default branch if different |
| `.ai-rules/documentation.md` | Tracking files | `PROJECT_STATUS.md`, `ROADMAP.md`, `TECH_DEBT.md`, `docs/learning/` | Replace with target project's status/roadmap docs |
| `.ai-rules/template-onboarding.md` | Template clone workflow | `fastapi-production-foundation`, `TEMPLATE_FREEZE_CHECKLIST.md`, fork docs | Rewrite for target onboarding story |
| `.ai-rules/learning-mode.md` | Completion report format | References AVS layers (booking, IVR, calendar) in examples | Generalize product layer names |
| `.ai-rules/incremental-work.md` | Validation commands | `make validate`, `make policy-guards`, docker compose pytest | Point to target Makefile targets |
| `.ai-rules/planning-and-task-breakdown.md` | Roadmap IDs | `ROADMAP.md`, `TECH_DEBT.md`, AVS-style task cards | Use target backlog format |
| `.commands/build-next-roadmap-task.md` | Repository name + docs | Says "fastapi-production-foundation", reads `ROADMAP.md` / `TECH_DEBT.md` | Update repo name and tracking file paths |
| `.commands/update-project-status.md` | Status docs | `PROJECT_STATUS.md`, `ROADMAP.md`, `TECH_DEBT.md` | Remap tracking files |
| `.commands/template-onboard.md` | Template clone | Foundation/template paths and freeze checklist | Rewrite for target clone process |
| `agents/backend-reviewer.md` | FastAPI paths | `app/api/routes/`, `app/services/`, `/api/v1` | Update inspect paths |
| `agents/tenancy-reviewer.md` | Tenant isolation | `tenant_id`, tenant dependencies, isolation tests | Adapt or drop for non-tenant apps |
| `agents/database-reviewer.md` | Alembic policy | `scripts/ci/check_model_migration_pair.sh`, `alembic/versions/` | Point to target migration guards |
| `agents/devops-ci-reviewer.md` | CI/Makefile | `Makefile`, `.github/workflows/`, `scripts/ci/` | Update CI layout references |
| `agents/template-onboarding-agent.md` | Template product | Clone/fork of this foundation | Rewrite onboarding scope |
| `.claude/hooks/codex-stop-review.sh` | Review prompt language + stack checks | Polish prompt; checks `tenant_id`, routes-vs-services pattern | Translate prompt; update review heuristics for target stack |
| `scripts/validate-ai-workflows.sh` | Required dir `docs/specs` | Ensures specs directory exists for workflow | Create empty `docs/specs/` or adjust required_dirs |
| `scripts/ci/_lib.sh` | Base branch resolution | Defaults to `origin/main` | Change default branch if not `main` |
| `docs/ci-policy-guards.md` | Non-AI guards mixed in | Documents migration, pyproject lock, model guards for this app | Copy only AI sections or fork full policy doc |
| `docs/specs/README.md` | Verification plan | References `make validate`, `PROJECT_STATUS.md` | Update commands and tracking docs |
| `docs/ai-workflows.md` | Template docs links | `docs/template-onboarding.md`, `TEMPLATE_FREEZE_CHECKLIST.md` | Update optional doc links |

## Model and provider coupling (portable with edits)

| Source file | Coupling | Why it is project-specific | Required adaptation |
| ----------- | -------- | -------------------------- | ------------------- |
| `.ai-rules/model-routing.md` | Model name examples | Lists Claude/Codex model IDs (`claude-opus-4-8`, `gpt-5.5`, etc.) | Update when provider catalogs change |
| `scripts/ai/invoke-cross-reviewer.sh` | Hardcoded model tier table | `default_model_for_tier()` maps provider+tier to concrete models | Edit table for available models in target environment |
| `.claude/hooks/codex-stop-review.sh` | Fixed model | Uses `-m gpt-5.5` | Change model flag if desired |

## Optional references (not copied; no broken dependency)

These paths are mentioned as optional context but are **not** required by `scripts/validate-ai-workflows.sh`:

- `docs/learning/**` — codebase learning maps (human onboarding, not AI system files)
- `docs/decisions/**`, `docs/adr/**` — ADRs referenced from indexes
- `docs/template-onboarding.md`, `docs/template-usage.md`, `TEMPLATE_FREEZE_CHECKLIST.md` — template human docs
- `docs/appointment-saas-roadmap.md`, `docs/product-scope.md`, `docs/domain-model.md` — product docs

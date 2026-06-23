# Genericization Report

| Source file | Original coupling | Generic replacement | Reason |
| ----------- | ----------------- | ------------------- | ------ |
| `.ai-rules/agent-orchestration.md` | Appointment Voice SaaS identity, AVS roadmap, `make validate`, pytest paths | Target-repo identity, `.ai-rules/validation.md` placeholders | Standalone template |
| `.ai-rules/context-map.md` | `app/api/routes/`, `alembic/`, AVS tracking files | `<PLACEHOLDER>` paths, optional tracking | Layout varies by consumer |
| `.ai-rules/planning-and-task-breakdown.md` | `ROADMAP.md`, AVS-Exxx, booking/IVR domains | Generic backlog wording | Product-specific |
| `.ai-rules/documentation.md` | `PROJECT_STATUS.md`, AVS learning maps | Target-defined tracking files only | Not universal |
| `.ai-rules/learning-mode.md` | `docs/learning/*` AVS maps | Generic mentor sections | Learning maps are per-project |
| `.ai-rules/model-routing.md` | Hardcoded Claude/Codex model table | Env vars + CLI defaults | Models change; no hardcoding |
| `.ai-rules/incremental-work.md` | `docker compose run pytest`, `make validate` | Validation from `validation.md` | Commands vary |
| `.ai-rules/tdd-and-regression.md` | 85% coverage, docker pytest | Target validation commands | Policy varies |
| `.ai-rules/review-checklist.md` | FastAPI layers, tenancy, `/api/v1` | Generic layers and checks | Stack-agnostic review |
| `.ai-rules/tenancy.md` | Excluded | Consumer adds if multi-tenant | Optional domain |
| `.ai-rules/template-onboarding.md` | Excluded | N/A | Clone workflow not universal |
| `scripts/ai/invoke-cross-reviewer.sh` | `default_model_for_tier()` model IDs | `AI_REVIEW_MODEL` / CLI default | Portability |
| `scripts/validate-ai-workflows.sh` | AVS-required agents/commands | Template file set + coupling scan | This repo's layout |
| `.cursor/rules/backend.mdc` | `app/**/*.py` only | Multiple common src layouts | Polyglot adoption |
| `.commands/build-next-roadmap-task.md` | Excluded | Use `.commands/plan.md` | Roadmap-specific |
| `.commands/update-project-status.md` | Excluded | Document in consumer README | Status doc names vary |
| `agents/tenancy-reviewer.md` | Excluded | Security auditor + consumer rules | Tenancy optional |
| `.claude/settings.json` | Stop hook with Codex | Excluded | Machine/credential risk |

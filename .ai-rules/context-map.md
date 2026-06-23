# Context Map

Before editing, read the files listed for your **task type**. Start with
`.ai-rules/agent-orchestration.md`.

## Always read

| File | When |
|------|------|
| `.ai-rules/repository.md` | Every task |
| `.ai-rules/anti-overengineering.md` | Every task |
| `.ai-rules/git.md` | Before commit/push/merge |
| `.ai-rules/validation.md` | Before running validation commands |
| `.ai-rules/context-map.md` | You're here — pick a row below |

## Task type → read list

Replace `<PLACEHOLDER>` paths with directories defined by the target repository.

### API / HTTP change
- `.ai-rules/api.md`, `.ai-rules/architecture.md`, `.ai-rules/testing.md`
- `<API_ROUTES_DIR>/`, `<SCHEMA_DIR>/`, `<SERVICE_DIR>/`
- `<TEST_DIR>/` for the affected area
- Router registration / OpenAPI files if the project uses them

### Database / model change
- `.ai-rules/database.md`, `.ai-rules/testing.md`
- `<MODEL_DIR>/`, migration directory if applicable
- Migration and model tests defined by the target repo

### Security / auth change
- `.ai-rules/security.md`, `.ai-rules/threat-modeling.md`, `.ai-rules/testing.md`
- Auth configuration, security utilities, auth routes/handlers
- Security-focused tests in `<TEST_DIR>/`

### Background jobs / workers (if applicable)
- `.ai-rules/workers.md` (when present in target repo)
- Worker entry points, queue configuration, related services
- Worker/queue tests

### Storage / uploads change
- `.ai-rules/security.md`, `.ai-rules/architecture.md`
- Storage service modules, upload validation, related routes
- Upload/storage tests

### Docker / CI / Makefile change
- `.ai-rules/docker.md`, `.ai-rules/documentation.md`
- Container definitions, compose files, CI workflows, `Makefile`
- CI policy documentation if present

### Docs / project status change
- `.ai-rules/documentation.md`, `.ai-rules/review.md`
- `README.md`, tracking files defined by the target repo
- Matching `docs/` topic files

### AI rules / workflow change
- `.ai-rules/documentation.md`, `docs/ai-workflows.md`
- `AGENTS.md`, `CLAUDE.md`, `.cursor/rules/project.mdc`
- `scripts/validate-ai-workflows.sh` or `make validate` in this template

### Spec / ADR / design doc
- `.ai-rules/spec-driven-development.md`
- `docs/specs/README.md`, ADR directory if the project uses one

## Tracking files

Use only tracking files that exist in the target repository. Do not invent
status, roadmap, or tech-debt files unless the target repo defines them. See
`docs/ADAPTATION_CHECKLIST.md` when adopting this template.

# Adaptation Checklist

Complete this when adopting the template into a target repository.

## Project identity

- [ ] Update README with product name and purpose
- [ ] Remove or replace template-only documentation links

## Stack and layout

- [ ] Programming language and framework documented
- [ ] Replace `<API_ROUTES_DIR>`, `<SERVICE_DIR>`, `<TEST_DIR>` in `.ai-rules/context-map.md`
- [ ] Update `.cursor/rules/backend.mdc` globs to match real paths
- [ ] Add or remove `.ai-rules/workers.md` references if no background jobs

## Validation

- [ ] Fill `.ai-rules/validation.md` with real commands (test, lint, full validate)
- [ ] Wire `make validate-ai-workflows` or equivalent in Makefile
- [ ] Add CI job for static AI validation if desired (see `.github/workflows/` in this template)

## Git and branches

- [ ] Confirm default branch name in docs and handoff examples
- [ ] Add commit-trailer guards if the target repo uses them

## Docker and infrastructure

- [ ] Document compose service names and validation commands
- [ ] Update `.cursor/rules/docker.mdc` globs if needed

## Database

- [ ] Point `.ai-rules/database.md` and `agents/database-reviewer.md` at real migration paths
- [ ] Document migration policy scripts if any

## Security

- [ ] Document auth model and security-sensitive paths in `agents/security-auditor.md`
- [ ] Add data-isolation rules if multi-tenant (optional `.ai-rules/tenancy.md` in consumer repo)

## Backlog and tracking

- [ ] Define executable backlog location (if used)
- [ ] Define status or tech-debt tracking files if the project uses them

## Reviewers

- [ ] Verify `claude` and/or `codex` on PATH if using cross-provider review
- [ ] Create `.ai-review.env` from `examples/ai-review.env.example` (local only, not committed)

## CI

- [ ] Integrate static AI validation workflow
- [ ] Keep application CI separate from this template's validate-only workflow

## Final checks

- [ ] `make validate` or `bash scripts/validate-ai-workflows.sh` passes
- [ ] No machine-specific absolute paths in active files
- [ ] No secrets in committed files

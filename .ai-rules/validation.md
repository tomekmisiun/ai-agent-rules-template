# Validation Commands

This file documents how agents choose validation commands. **Replace the
placeholders below when adopting this template into a target repository.**

## This template repository

| Purpose | Command |
|---------|---------|
| AI workflow static validation | `make validate` |
| Shell syntax (optional) | `bash -n scripts/validate-ai-workflows.sh scripts/ai/*.sh` |

This template does not include application runtime tests.

## Target repository (configure on adoption)

Document the commands your project uses:

| Purpose | Command (replace) |
|---------|---------------------|
| Full application validation | `<FULL_VALIDATE_CMD>` e.g. `make test`, `npm test`, `cargo test` |
| Fast targeted tests | `<TARGETED_TEST_CMD>` e.g. `pytest tests/unit/test_foo.py` |
| Lint | `<LINT_CMD>` |
| Policy / commit guards | `<POLICY_GUARDS_CMD>` if applicable |
| AI workflow files | `bash scripts/validate-ai-workflows.sh` or `make validate-ai-workflows` |

Agents MUST use the commands defined here and in the target README — not
commands from other projects.

## Stop conditions

Do not claim validation PASS unless the command exited 0. Report SKIPPED when
a command does not apply (for example docs-only AI rule edits in this template).

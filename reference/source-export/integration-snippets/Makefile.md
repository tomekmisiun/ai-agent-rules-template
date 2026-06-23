# Makefile — AI workflow integration snippets

## Snippet 1: policy-guards target

- **Original source path:** `Makefile`
- **Line range:** 97–98
- **Why it belongs:** Invokes `scripts/ci/run_policy_guards.sh`, which includes AI workflow validation and AI commit-trailer checks.
- **References:** `scripts/ci/run_policy_guards.sh`, `scripts/validate-ai-workflows.sh`, `scripts/ci/check_no_ai_commit_trailers.sh`
- **Must recreate in another repository:** Yes — add a `policy-guards` Makefile target that runs the policy guard runner.

```makefile
policy-guards:
	bash scripts/ci/run_policy_guards.sh
```

## Snippet 2: validate-ai-workflows target

- **Original source path:** `Makefile`
- **Line range:** 100–101
- **Why it belongs:** Dedicated Makefile entry point for AI workflow file presence validation.
- **References:** `scripts/validate-ai-workflows.sh`
- **Must recreate in another repository:** Yes — if adopting the AI workflow validation script.

```makefile
validate-ai-workflows:
	bash scripts/validate-ai-workflows.sh
```

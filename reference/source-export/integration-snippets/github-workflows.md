# .github/workflows/ci.yml — AI workflow integration snippets

## Snippet 1: policy-guards CI job

- **Original source path:** `.github/workflows/ci.yml`
- **Line range:** 37–55
- **Why it belongs:** CI job that runs `scripts/ci/run_policy_guards.sh`, which includes `scripts/validate-ai-workflows.sh` and `scripts/ci/check_no_ai_commit_trailers.sh`.
- **References:** `scripts/ci/run_policy_guards.sh`, `make policy-guards`
- **Must recreate in another repository:** Yes — if enforcing AI workflow presence and commit-trailer policy in CI.

```yaml
  policy-guards:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v6
        with:
          fetch-depth: 0

      - name: Fetch base branch
        if: github.event_name == 'pull_request'
        run: git fetch origin "${{ github.base_ref }}"

      - name: Run policy guards
        env:
          GITHUB_BASE_REF: ${{ github.base_ref }}
          GITHUB_EVENT_NAME: ${{ github.event_name }}
          GITHUB_EVENT_BEFORE: ${{ github.event.before }}
        run: bash scripts/ci/run_policy_guards.sh
```

## Snippet 2: test job depends on policy-guards

- **Original source path:** `.github/workflows/ci.yml`
- **Line range:** 71–75
- **Why it belongs:** Ensures tests do not run until policy guards (including AI checks) pass.
- **References:** `policy-guards` job
- **Must recreate in another repository:** Recommended — keeps AI/policy enforcement in the critical path.

```yaml
  test:
    runs-on: ubuntu-latest
    needs:
      - pre-commit
      - policy-guards
```

## Snippet 3: run_policy_guards.sh AI-related lines

- **Original source path:** `scripts/ci/run_policy_guards.sh`
- **Line range:** 10–11
- **Why it belongs:** The policy guard runner invokes AI-specific checks alongside other guards. Full script not copied (mixed file).
- **References:** `scripts/ci/check_no_ai_commit_trailers.sh`, `scripts/validate-ai-workflows.sh`
- **Must recreate in another repository:** Yes — wire AI guards into the policy runner or call them from CI directly.

```bash
bash "$ROOT/scripts/ci/check_no_ai_commit_trailers.sh"
bash "$ROOT/scripts/validate-ai-workflows.sh"
```

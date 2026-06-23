# .pre-commit-config.yaml — AI workflow integration snippets

## Snippet 1: block-ai-trailers commit-msg hook

- **Original source path:** `.pre-commit-config.yaml`
- **Line range:** 23–27
- **Why it belongs:** Pre-commit hook that blocks AI attribution trailers in commit messages; pairs with `scripts/hooks/check_commit_msg_no_ai_trailers.sh` and `scripts/ci/lib_ai_commit_trailers.sh`.
- **References:** `scripts/hooks/check_commit_msg_no_ai_trailers.sh`, `scripts/ci/lib_ai_commit_trailers.sh`, `.ai-rules/git.md`, `docs/ci-policy-guards.md`
- **Must recreate in another repository:** Yes — if enforcing no-AI-trailer policy locally via pre-commit.

```yaml
      - id: block-ai-trailers
        name: block AI authorship trailers in commit messages
        entry: scripts/hooks/check_commit_msg_no_ai_trailers.sh
        language: script
        stages: [commit-msg]
```

## Snippet 2: commit-msg hook installation note

- **Original source path:** `docs/ai-workflows.md` (referenced from README and `.ai-rules/git.md`)
- **Line range:** 133 (in `docs/ai-workflows.md`, exported in `source-tree/`)
- **Why it belongs:** Documents one-time hook installation required for local enforcement.
- **References:** `uv run pre-commit install --hook-type commit-msg`
- **Must recreate in another repository:** Yes — document alongside pre-commit config.

```markdown
Install commit-msg hook once: `uv run pre-commit install --hook-type commit-msg`.
```

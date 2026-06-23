# README.md — AI workflow integration snippets

## Snippet 1: AI workflow mention in features list

- **Original source path:** `README.md`
- **Line range:** 45
- **Why it belongs:** Documents that the repository includes AI coding-agent rules.
- **References:** `.ai-rules/`, `agents/`, `.commands/`
- **Must recreate in another repository:** Optional — human-facing index only.

```markdown
- AI workflow rules in `.ai-rules/`, with optional agents and commands.
```

## Snippet 2: validate-ai-workflows command table row

- **Original source path:** `README.md`
- **Line range:** 133
- **Why it belongs:** Documents the AI workflow validation command for developers.
- **References:** `make validate-ai-workflows`
- **Must recreate in another repository:** Yes — if exposing the command in project docs.

```markdown
| `make validate-ai-workflows` | Validate AI workflow file presence |
```

## Snippet 3: policy-guards command table row

- **Original source path:** `README.md`
- **Line range:** 134
- **Why it belongs:** Documents policy guards that include AI workflow and commit-trailer enforcement.
- **References:** `make policy-guards`, `scripts/ci/run_policy_guards.sh`
- **Must recreate in another repository:** Yes — if adopting policy guards.

```markdown
| `make policy-guards` | Run CI policy guard scripts |
```

## Snippet 4: .ai-rules in project structure table

- **Original source path:** `README.md`
- **Line range:** 167
- **Why it belongs:** Points developers to binding AI rules location.
- **References:** `.ai-rules/`
- **Must recreate in another repository:** Recommended.

```markdown
| [`.ai-rules/`](.ai-rules/) | Binding AI/project rules |
```

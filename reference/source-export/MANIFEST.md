# Export Manifest

| Field | Value |
| ----- | ----- |
| Source commit | e4495b7ffdd9d77b6ff267d9f4e46a572ad615c0 |
| Source branch | detached HEAD |
| Export date | 2026-06-23 |
| Full file copies | 63 |
| Mixed-file snippets | 4 files (9 snippets) |
| Excluded candidates | 47 (see EXCLUDED_CANDIDATES.md) |
| Unresolved references | 0 |

## Category legend

- **A** — Core universal rules
- **B** — Tool-specific adapters
- **C** — Agent definitions and commands
- **D** — Automation and enforcement
- **E** — Documentation
- **F** — Mixed integration (snippet only)

---

## A — Core universal rules (`.ai-rules/`)

| Source path | Export path | Category | Copy | Tool | Purpose | Referenced by | References |
| ----------- | ----------- | -------- | ---- | ---- | ------- | ------------- | ---------- |
| `.ai-rules/agent-orchestration.md` | `source-tree/.ai-rules/agent-orchestration.md` | A | Full | All | Start every task; review orchestration | AGENTS.md, CLAUDE.md, project.mdc, validate-ai-workflows | context-map, model-routing, git, invoke-cross-reviewer |
| `.ai-rules/anti-overengineering.md` | `source-tree/.ai-rules/anti-overengineering.md` | A | Full | All | Prevent unnecessary abstraction | All entry points, ponytail.mdc | — |
| `.ai-rules/api.md` | `source-tree/.ai-rules/api.md` | A | Full | All | HTTP/API conventions | AGENTS.md, context-map | architecture, testing |
| `.ai-rules/architecture.md` | `source-tree/.ai-rules/architecture.md` | A | Full | All | Layer dependencies | AGENTS.md, context-map | api, testing |
| `.ai-rules/context-map.md` | `source-tree/.ai-rules/context-map.md` | A | Full | All | Task → files to read | agent-orchestration, project.mdc | app paths, other .ai-rules |
| `.ai-rules/database.md` | `source-tree/.ai-rules/database.md` | A | Full | All | SQLAlchemy/Alembic rules | AGENTS.md, context-map | testing |
| `.ai-rules/docker.md` | `source-tree/.ai-rules/docker.md` | A | Full | All | Compose/production safety | AGENTS.md, context-map | — |
| `.ai-rules/documentation.md` | `source-tree/.ai-rules/documentation.md` | A | Full | All | README/docs/tracking rules | AGENTS.md, context-map | — |
| `.ai-rules/git.md` | `source-tree/.ai-rules/git.md` | A | Full | All | Branches, commits, approve gate | agent-orchestration, lib_ai_commit_trailers | check_no_ai_commit_trailers |
| `.ai-rules/incremental-work.md` | `source-tree/.ai-rules/incremental-work.md` | A | Full | All | Thin-slice workflow | agent-orchestration, validate-ai-workflows | planning-and-task-breakdown |
| `.ai-rules/learning-mode.md` | `source-tree/.ai-rules/learning-mode.md` | A | Full | All | Completion report format | agent-orchestration, validate-ai-workflows | — |
| `.ai-rules/model-routing.md` | `source-tree/.ai-rules/model-routing.md` | A | Full | All | Model tiers, cross-review policy | agent-orchestration, invoke-cross-reviewer, validate-ai-workflows | — |
| `.ai-rules/planning-and-task-breakdown.md` | `source-tree/.ai-rules/planning-and-task-breakdown.md` | A | Full | All | Task cards | agent-orchestration, validate-ai-workflows | incremental-work |
| `.ai-rules/repository.md` | `source-tree/.ai-rules/repository.md` | A | Full | All | Scope, config hygiene | context-map, repo.mdc | git, ci-policy-guards |
| `.ai-rules/review-checklist.md` | `source-tree/.ai-rules/review-checklist.md` | A | Full | All | Reviewer output format | invoke-cross-reviewer, code-reviewer, two-agent-review-workflow | — |
| `.ai-rules/review.md` | `source-tree/.ai-rules/review.md` | A | Full | All | Pre-merge checklist (Builder) | agent-orchestration, validate-ai-workflows | review-checklist |
| `.ai-rules/security.md` | `source-tree/.ai-rules/security.md` | A | Full | All | Auth, secrets, validators | AGENTS.md, context-map | threat-modeling |
| `.ai-rules/spec-driven-development.md` | `source-tree/.ai-rules/spec-driven-development.md` | A | Full | All | Spec-before-code | agent-orchestration, validate-ai-workflows, docs/specs/README | — |
| `.ai-rules/tdd-and-regression.md` | `source-tree/.ai-rules/tdd-and-regression.md` | A | Full | All | Test-first workflow | agent-orchestration, validate-ai-workflows | testing |
| `.ai-rules/template-onboarding.md` | `source-tree/.ai-rules/template-onboarding.md` | A | Full | All | Clone-to-new-product workflow | validate-ai-workflows, template-onboard | — |
| `.ai-rules/tenancy.md` | `source-tree/.ai-rules/tenancy.md` | A | Full | All | Tenant isolation | AGENTS.md, context-map | security |
| `.ai-rules/testing.md` | `source-tree/.ai-rules/testing.md` | A | Full | All | pytest integrity | AGENTS.md, context-map | — |
| `.ai-rules/threat-modeling.md` | `source-tree/.ai-rules/threat-modeling.md` | A | Full | All | Security threat prompts | agent-orchestration, validate-ai-workflows | security |
| `.ai-rules/workers.md` | `source-tree/.ai-rules/workers.md` | A | Full | All | Job queue rules | AGENTS.md, context-map | — |

---

## B — Tool-specific adapters

| Source path | Export path | Category | Copy | Tool | Purpose | Referenced by | References |
| ----------- | ----------- | -------- | ---- | ---- | ------- | ------------- | ---------- |
| `AGENTS.md` | `source-tree/AGENTS.md` | B | Full | Codex | Codex CLI entry index | validate-ai-workflows | .ai-rules/, invoke-cross-reviewer |
| `CLAUDE.md` | `source-tree/CLAUDE.md` | B | Full | Claude | Claude Code entry index | validate-ai-workflows | .ai-rules/, invoke-cross-reviewer, code-reviewer |
| `.cursor/rules/project.mdc` | `source-tree/.cursor/rules/project.mdc` | B | Full | Cursor | Main always-on rule index | — | .ai-rules/, docs/ai-workflows |
| `.cursor/rules/ponytail.mdc` | `source-tree/.cursor/rules/ponytail.mdc` | B | Full | Cursor | Anti-overengineering pointer | — | anti-overengineering.md |
| `.cursor/rules/backend.mdc` | `source-tree/.cursor/rules/backend.mdc` | B | Full | Cursor | Backend rule pointer | — | architecture, api |
| `.cursor/rules/docker.mdc` | `source-tree/.cursor/rules/docker.mdc` | B | Full | Cursor | Docker rule pointer | — | docker.md |
| `.cursor/rules/gitignore.mdc` | `source-tree/.cursor/rules/gitignore.mdc` | B | Full | Cursor | Gitignore guidance pointer | — | repository.md |
| `.cursor/rules/readme.mdc` | `source-tree/.cursor/rules/readme.mdc` | B | Full | Cursor | README/docs pointer | — | documentation.md |
| `.cursor/rules/repo.mdc` | `source-tree/.cursor/rules/repo.mdc` | B | Full | Cursor | Repo/architecture pointer | — | repository.md, architecture.md |
| `.cursor/rules/testing.mdc` | `source-tree/.cursor/rules/testing.mdc` | B | Full | Cursor | Testing pointer | — | testing.md, ci-policy-guards |
| `.cursor/rules/workflow.mdc` | `source-tree/.cursor/rules/workflow.mdc` | B | Full | Cursor | Git workflow pointer | — | git.md |
| `.claude/settings.json` | `source-tree/.claude/settings.json` | B | Full | Claude | Stop hook registration | — | codex-stop-review.sh |
| `.claude/hooks/codex-stop-review.sh` | `source-tree/.claude/hooks/codex-stop-review.sh` | B | Full | Claude | Codex review on session stop | settings.json, validate-ai-workflows | codex CLI |
| `.claude/agents/code-reviewer.md` | `source-tree/.claude/agents/code-reviewer.md` | B | Full | Claude | Native Reviewer subagent | CLAUDE.md, agent-orchestration | review-checklist.md |

---

## C — Agent definitions and commands

| Source path | Export path | Category | Copy | Tool | Purpose | Referenced by | References |
| ----------- | ----------- | -------- | ---- | ---- | ------- | ------------- | ---------- |
| `agents/backend-reviewer.md` | `source-tree/agents/backend-reviewer.md` | C | Full | All | FastAPI review persona | ai-workflows, validate-ai-workflows | app/ paths |
| `agents/database-reviewer.md` | `source-tree/agents/database-reviewer.md` | C | Full | All | Migration review persona | ai-workflows, validate-ai-workflows | alembic/ |
| `agents/devops-ci-reviewer.md` | `source-tree/agents/devops-ci-reviewer.md` | C | Full | All | CI/Docker review persona | ai-workflows, validate-ai-workflows | Makefile, workflows |
| `agents/security-auditor.md` | `source-tree/agents/security-auditor.md` | C | Full | All | Security audit persona | ai-workflows, validate-ai-workflows | security.md |
| `agents/tenancy-reviewer.md` | `source-tree/agents/tenancy-reviewer.md` | C | Full | All | Tenancy review persona | ai-workflows, validate-ai-workflows | tenancy.md |
| `agents/template-onboarding-agent.md` | `source-tree/agents/template-onboarding-agent.md` | C | Full | All | Template clone persona | validate-ai-workflows | template-onboarding.md |
| `.commands/spec.md` | `source-tree/.commands/spec.md` | C | Full | All | Write spec prompt | ai-workflows, validate-ai-workflows | spec-driven-development |
| `.commands/plan.md` | `source-tree/.commands/plan.md` | C | Full | All | Task breakdown prompt | ai-workflows, validate-ai-workflows | planning-and-task-breakdown |
| `.commands/build-next-roadmap-task.md` | `source-tree/.commands/build-next-roadmap-task.md` | C | Full | All | Next roadmap item prompt | validate-ai-workflows | ROADMAP.md |
| `.commands/review-current-branch.md` | `source-tree/.commands/review-current-branch.md` | C | Full | All | Pre-PR review prompt | ai-workflows, validate-ai-workflows | review.md |
| `.commands/builder-handoff.md` | `source-tree/.commands/builder-handoff.md` | C | Full | All | Builder handoff template | two-agent-review-workflow, invoke-cross-reviewer | review-checklist |
| `.commands/two-agent-review.md` | `source-tree/.commands/two-agent-review.md` | C | Full | All | Human two-agent index | validate-ai-workflows | review-checklist |
| `.commands/security-audit.md` | `source-tree/.commands/security-audit.md` | C | Full | All | Security audit prompt | ai-workflows, validate-ai-workflows | security-auditor |
| `.commands/template-onboard.md` | `source-tree/.commands/template-onboard.md` | C | Full | All | Template onboard prompt | validate-ai-workflows | template-onboarding |
| `.commands/update-project-status.md` | `source-tree/.commands/update-project-status.md` | C | Full | All | Sync tracking docs prompt | ai-workflows, validate-ai-workflows | PROJECT_STATUS.md |

---

## D — Automation and enforcement

| Source path | Export path | Category | Copy | Tool | Purpose | Referenced by | References |
| ----------- | ----------- | -------- | ---- | ---- | ------- | ------------- | ---------- |
| `scripts/ai/invoke-cross-reviewer.sh` | `source-tree/scripts/ai/invoke-cross-reviewer.sh` | D | Full | Claude/Codex | Cross-provider read-only review | AGENTS.md, CLAUDE.md, agent-orchestration | review-checklist, builder-handoff, claude/codex CLI |
| `scripts/validate-ai-workflows.sh` | `source-tree/scripts/validate-ai-workflows.sh` | D | Full | All | AI file presence + reference guards | Makefile, run_policy_guards, ci-policy-guards | all required AI paths |
| `scripts/ci/check_no_ai_commit_trailers.sh` | `source-tree/scripts/ci/check_no_ai_commit_trailers.sh` | D | Full | All | CI range commit-trailer scan | run_policy_guards, git.md, ai-workflows | _lib.sh, lib_ai_commit_trailers |
| `scripts/ci/lib_ai_commit_trailers.sh` | `source-tree/scripts/ci/lib_ai_commit_trailers.sh` | D | Full | All | Shared trailer patterns | check_no_ai, commit-msg hook | git.md |
| `scripts/ci/_lib.sh` | `source-tree/scripts/ci/_lib.sh` | D | Full | All | resolve_base_ref for CI guards | check_no_ai_commit_trailers | origin/main |
| `scripts/hooks/check_commit_msg_no_ai_trailers.sh` | `source-tree/scripts/hooks/check_commit_msg_no_ai_trailers.sh` | D | Full | All | Pre-commit commit-msg hook | pre-commit-config | lib_ai_commit_trailers |

---

## E — Documentation

| Source path | Export path | Category | Copy | Tool | Purpose | Referenced by | References |
| ----------- | ----------- | -------- | ---- | ---- | ------- | ------------- | ---------- |
| `docs/ai-workflows.md` | `source-tree/docs/ai-workflows.md` | E | Full | All | AI workflow index | AGENTS.md, CLAUDE.md, project.mdc, validate-ai-workflows | .ai-rules/, .commands/, agents/ |
| `docs/two-agent-review-workflow.md` | `source-tree/docs/two-agent-review-workflow.md` | E | Full | All | Builder/Reviewer workflow | AGENTS.md, CLAUDE.md, validate-ai-workflows | invoke-cross-reviewer, review-checklist |
| `docs/ci-policy-guards.md` | `source-tree/docs/ci-policy-guards.md` | E | Full | All | CI/pre-commit guard docs (incl. AI) | AGENTS.md, project.mdc | validate-ai-workflows, check_no_ai |
| `docs/specs/README.md` | `source-tree/docs/specs/README.md` | E | Full | All | Feature spec conventions for agents | validate-ai-workflows (docs/specs dir) | .commands/spec.md |

---

## F — Mixed integration snippets

| Source path | Export path | Category | Copy | Tool | Purpose | Referenced by | References |
| ----------- | ----------- | -------- | ---- | ---- | ------- | ------------- | ---------- |
| `Makefile` L97–101 | `integration-snippets/Makefile.md` | F | Snippet | All | policy-guards + validate-ai-workflows targets | README, ci-policy-guards | run_policy_guards, validate-ai-workflows |
| `README.md` L45,133–134,167 | `integration-snippets/README.md` | F | Snippet | All | Human docs for AI commands | — | make targets, .ai-rules |
| `.pre-commit-config.yaml` L23–27 | `integration-snippets/pre-commit-config.md` | F | Snippet | All | commit-msg AI trailer hook | ai-workflows, git.md | check_commit_msg_no_ai_trailers |
| `.github/workflows/ci.yml` L37–55,71–75 | `integration-snippets/github-workflows.md` | F | Snippet | CI | policy-guards job | Makefile policy-guards | run_policy_guards.sh |
| `scripts/ci/run_policy_guards.sh` L10–11 | `integration-snippets/github-workflows.md` | F | Snippet | CI | AI guard invocation lines | ci.yml | check_no_ai, validate-ai-workflows |

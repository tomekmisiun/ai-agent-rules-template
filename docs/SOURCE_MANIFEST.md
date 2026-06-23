# Source Manifest

Mapping from exported source to active template files.

| Exported source | Active target | Exact copy or adapted | Purpose |
| --------------- | ------------- | --------------------- | ------- |
| `source-tree/.ai-rules/agent-orchestration.md` | `.ai-rules/agent-orchestration.md` | Adapted | Task orchestration, review tree |
| `source-tree/.ai-rules/anti-overengineering.md` | `.ai-rules/anti-overengineering.md` | Adapted | Simplicity bias |
| `source-tree/.ai-rules/architecture.md` | `.ai-rules/architecture.md` | Adapted | Generic layering |
| `source-tree/.ai-rules/api.md` | `.ai-rules/api.md` | Adapted | Generic API rules |
| `source-tree/.ai-rules/context-map.md` | `.ai-rules/context-map.md` | Adapted | Placeholder path map |
| `source-tree/.ai-rules/database.md` | `.ai-rules/database.md` | Adapted | Generic DB rules |
| `source-tree/.ai-rules/docker.md` | `.ai-rules/docker.md` | Adapted | Container safety |
| `source-tree/.ai-rules/documentation.md` | `.ai-rules/documentation.md` | Adapted | Docs policy |
| `source-tree/.ai-rules/git.md` | `.ai-rules/git.md` | Adapted | Git safety |
| `source-tree/.ai-rules/incremental-work.md` | `.ai-rules/incremental-work.md` | Adapted | Slice workflow |
| `source-tree/.ai-rules/learning-mode.md` | `.ai-rules/learning-mode.md` | Adapted | Completion format |
| `source-tree/.ai-rules/model-routing.md` | `.ai-rules/model-routing.md` | Adapted | Tiers without hardcoded models |
| `source-tree/.ai-rules/planning-and-task-breakdown.md` | `.ai-rules/planning-and-task-breakdown.md` | Adapted | Task cards |
| `source-tree/.ai-rules/repository.md` | `.ai-rules/repository.md` | Adapted | Scope rules |
| `source-tree/.ai-rules/review-checklist.md` | `.ai-rules/review-checklist.md` | Adapted | Reviewer output |
| `source-tree/.ai-rules/review.md` | `.ai-rules/review.md` | Adapted | Pre-merge checklist |
| `source-tree/.ai-rules/security.md` | `.ai-rules/security.md` | Adapted | Security policy |
| `source-tree/.ai-rules/spec-driven-development.md` | `.ai-rules/spec-driven-development.md` | Adapted | Spec workflow |
| `source-tree/.ai-rules/tdd-and-regression.md` | `.ai-rules/tdd-and-regression.md` | Adapted | TDD workflow |
| `source-tree/.ai-rules/testing.md` | `.ai-rules/testing.md` | Adapted | Test policy |
| `source-tree/.ai-rules/threat-modeling.md` | `.ai-rules/threat-modeling.md` | Adapted | Threat prompts |
| `source-tree/.ai-rules/workers.md` | `.ai-rules/workers.md` | Adapted | Optional worker rules |
| `source-tree/.ai-rules/tenancy.md` | — | Excluded | Product-specific; add in consumer repo if needed |
| `source-tree/.ai-rules/template-onboarding.md` | — | Excluded | Template clone workflow |
| `source-tree/AGENTS.md` | `AGENTS.md` | Adapted | Codex index |
| `source-tree/CLAUDE.md` | `CLAUDE.md` | Adapted | Claude index |
| `source-tree/.cursor/rules/project.mdc` | `.cursor/rules/project.mdc` | Adapted | Cursor entry |
| `source-tree/.cursor/rules/backend.mdc` | `.cursor/rules/backend.mdc` | Adapted | Generic globs |
| `source-tree/.cursor/rules/testing.mdc` | `.cursor/rules/testing.mdc` | Adapted | Test globs |
| `source-tree/.cursor/rules/docker.mdc` | `.cursor/rules/docker.mdc` | Adapted | Docker globs |
| `source-tree/.cursor/rules/readme.mdc` | `.cursor/rules/documentation.mdc` | Adapted | Renamed, broader globs |
| `source-tree/.cursor/rules/workflow.mdc` | `.cursor/rules/workflow.mdc` | Adapted | Git globs |
| `source-tree/.cursor/rules/ponytail.mdc` | — | Merged | Into `anti-overengineering` index |
| `source-tree/.cursor/rules/repo.mdc` | — | Merged | Into `project.mdc` |
| `source-tree/.cursor/rules/gitignore.mdc` | — | Excluded | Low value as separate rule |
| `source-tree/.cursor/rules/*.mdc` | `.cursor/rules/security.mdc` | New | Security globs |
| `source-tree/.claude/agents/code-reviewer.md` | `.claude/agents/code-reviewer.md` | Adapted | Claude reviewer |
| `source-tree/.claude/settings.json` | — | Excluded | Machine-specific |
| `source-tree/.claude/hooks/codex-stop-review.sh` | — | Excluded | Optional paid hook |
| `source-tree/.commands/spec.md` | `.commands/spec.md` | Adapted | Spec prompt |
| `source-tree/.commands/plan.md` | `.commands/plan.md` | Adapted | Plan prompt |
| `source-tree/.commands/builder-handoff.md` | `.commands/builder-handoff.md` | Adapted | Handoff format |
| `source-tree/.commands/two-agent-review.md` | `.commands/two-agent-review.md` | Adapted | Index |
| `source-tree/.commands/review-current-branch.md` | `.commands/review-current-branch.md` | Adapted | Branch review |
| `source-tree/.commands/security-audit.md` | `.commands/security-audit.md` | Adapted | Security audit |
| `source-tree/.commands/build-next-roadmap-task.md` | — | Excluded | Product roadmap |
| `source-tree/.commands/update-project-status.md` | — | Excluded | Product status sync |
| `source-tree/.commands/template-onboard.md` | — | Excluded | Template clone |
| `source-tree/agents/security-auditor.md` | `agents/security-auditor.md` | Adapted | Security persona |
| `source-tree/agents/devops-ci-reviewer.md` | `agents/devops-ci-reviewer.md` | Adapted | CI persona |
| `source-tree/agents/backend-reviewer.md` | `agents/backend-reviewer.md` | Adapted | Backend persona |
| `source-tree/agents/database-reviewer.md` | `agents/database-reviewer.md` | Adapted | DB persona |
| `source-tree/agents/tenancy-reviewer.md` | — | Excluded | Product tenancy |
| `source-tree/agents/template-onboarding-agent.md` | — | Excluded | Template clone |
| `source-tree/scripts/ai/invoke-cross-reviewer.sh` | `scripts/ai/invoke-cross-reviewer.sh` | Adapted | No hardcoded models |
| `source-tree/scripts/validate-ai-workflows.sh` | `scripts/validate-ai-workflows.sh` | Adapted | Expanded static checks |
| `source-tree/scripts/ci/*` | — | Excluded | Consumer repo CI integration |
| `source-tree/docs/ai-workflows.md` | `docs/ai-workflows.md` | Adapted | Workflow index |
| `source-tree/docs/two-agent-review-workflow.md` | `docs/two-agent-review-workflow.md` | Adapted | Review workflow |
| `source-tree/docs/ci-policy-guards.md` | — | Excluded | App-specific CI guards |
| `source-tree/docs/specs/README.md` | `docs/specs/README.md` | Adapted | Spec conventions |
| Export meta (`MANIFEST.md`, etc.) | `reference/source-export/` | Exact copy | Provenance |

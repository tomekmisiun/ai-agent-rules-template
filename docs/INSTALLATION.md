# Installation

## As a standalone template

```bash
git clone https://github.com/tomekmisiun/ai-agent-rules-template.git
cd ai-agent-rules-template
make validate
```

## Into an existing repository

1. Copy these paths into the target repository root:
   - `.ai-rules/`
   - `.cursor/rules/`
   - `.claude/agents/`
   - `.commands/`
   - `agents/`
   - `scripts/ai/invoke-cross-reviewer.sh`
   - `scripts/validate-ai-workflows.sh`
   - `AGENTS.md`, `CLAUDE.md`
   - `docs/ai-workflows.md`, `docs/two-agent-review-workflow.md`, and tool docs you need

2. Merge or add a Makefile target:

   ```makefile
   validate-ai-workflows:
   	bash scripts/validate-ai-workflows.sh
   ```

3. Complete `docs/ADAPTATION_CHECKLIST.md`.

4. Run `bash scripts/validate-ai-workflows.sh` and fix path/glob mismatches.

## Optional cross-provider review

Install Claude Code CLI and/or Codex CLI locally. Configure models via environment
variables — see `docs/CROSS_PROVIDER_REVIEW.md` and `examples/ai-review.env.example`.

## Do not copy

- `reference/` (provenance only unless you want local audit trail)
- Application runtime code from the source export

# Architecture

## Design goal

One source of truth (`.ai-rules/`) with thin adapters per AI tool.

```text
                    ┌─────────────────┐
                    │   .ai-rules/    │
                    │  (binding rules) │
                    └────────┬────────┘
                             │
         ┌───────────────────┼───────────────────┐
         ▼                   ▼                   ▼
  .cursor/rules/        CLAUDE.md           AGENTS.md
  (globs + pointers)   (Claude index)     (Codex index)
         │                   │                   │
         └───────────────────┴───────────────────┘
                             │
                    scripts/validate-ai-workflows.sh
                    scripts/ai/invoke-cross-reviewer.sh
```

## Layers

| Layer | Role |
|-------|------|
| Universal rules | Task scope, git safety, review, testing policy |
| Tool adapters | Load rules; never duplicate bodies |
| Commands / agents | Optional prompts and personas |
| Scripts | Static validation; optional cross-provider review |
| Reference | Immutable export; not loaded as active rules |

## Consumer adoption

Copy active files into a target repo, then customize `.ai-rules/validation.md`,
`.ai-rules/context-map.md`, and Cursor globs. See `docs/ADAPTATION_CHECKLIST.md`.

## Enforcement

Static validation (`make validate`) checks file presence, frontmatter, references,
and forbidden coupling. Runtime review quality depends on agent behavior and optional CLIs.

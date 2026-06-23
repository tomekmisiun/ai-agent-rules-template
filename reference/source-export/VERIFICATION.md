# Verification Report

Export date: **2026-06-23**

Source commit: **e4495b7ffdd9d77b6ff267d9f4e46a572ad615c0**

## Checksum validation

| Check | Result |
| ----- | ------ |
| All 63 files under `source-tree/` match source SHA-256 | **PASS** |
| Checksums recorded in `CHECKSUMS.sha256` | **PASS** |

## Component coverage

| Component | Expected | Copied | Result |
| --------- | -------- | ------ | ------ |
| `.ai-rules/` files | 24 | 24 | **PASS** |
| `.cursor/rules/` files | 9 | 9 | **PASS** |
| `.claude/` agents | 1 | 1 | **PASS** |
| `.claude/` hooks | 1 | 1 | **PASS** |
| `.claude/settings.json` | 1 | 1 | **PASS** |
| `.commands/` files | 9 | 9 | **PASS** |
| `agents/` personas (repo root) | 6 | 6 | **PASS** |
| `scripts/ai/` | 1 | 1 | **PASS** |
| `scripts/validate-ai-workflows.sh` | 1 | 1 | **PASS** |
| AI commit-trailer scripts + lib | 4 | 4 | **PASS** |
| AI workflow documentation | 3 + specs README | 4 | **PASS** |
| Entry indexes `AGENTS.md`, `CLAUDE.md` | 2 | 2 | **PASS** |

## Referenced dependency resolution

| Reference | Status |
| --------- | ------ |
| `scripts/ci/_lib.sh` (dep of check_no_ai_commit_trailers) | **Resolved** — copied |
| `scripts/ci/lib_ai_commit_trailers.sh` | **Resolved** — copied |
| `docs/specs/` directory | **Resolved** — `docs/specs/README.md` copied |
| `scripts/ci/run_policy_guards.sh` | **Snippet only** — mixed file |
| `docs/learning/**` | **Optional** — not required by validator |
| `.codex/agents/reviewer.toml` | **Removed** — documented, not an error |
| External `claude` / `codex` CLI | **Optional runtime** — not bundled |

**Unresolved required references:** 0

## Secret and path safety scan

| Check | Result |
| ----- | ------ |
| API keys / tokens / private keys in `source-tree/` | **PASS** (none found) |
| User-specific absolute paths (`/home/...`) | **PASS** (none found) |
| Export marked safe for archiving | **PASS** |

## Source repository integrity

| Check | Result |
| ----- | ------ |
| Tracked files modified | **PASS** (none) |
| Only new untracked content | `_exports/` directory |
| `git diff --stat` on tracked files | **PASS** (empty) |

## Integration snippets

| Snippet file | Source mixed files documented | Result |
| ------------ | ----------------------------- | ------ |
| `integration-snippets/Makefile.md` | Makefile | **PASS** |
| `integration-snippets/README.md` | README.md | **PASS** |
| `integration-snippets/pre-commit-config.md` | .pre-commit-config.yaml | **PASS** |
| `integration-snippets/github-workflows.md` | ci.yml, run_policy_guards.sh | **PASS** |

## Archive readiness

| Check | Result |
| ----- | ------ |
| Verification passed | **PASS** |
| Secret scan passed | **PASS** |
| `appointment-voice-saas-ai-system-export.tar.gz` created | See archive step |

## Overall verdict

**PASS** — export suitable for portable archive distribution.

# Validation Report

Recorded: 2026-06-23

## Commands run

```bash
cd reference/source-export/source-tree && sha256sum -c ../CHECKSUMS.sha256
bash -n scripts/ai/*.sh
bash -n scripts/validate-ai-workflows.sh
make validate
```

## Results

| Check | Result |
| ----- | ------ |
| Reference directory unchanged | PASS |
| Source checksums (63 files) | PASS |
| Shell syntax (`scripts/ai/*.sh`) | PASS |
| Shell syntax (`validate-ai-workflows.sh`) | PASS |
| Cursor frontmatter | PASS |
| Local references | PASS |
| Markdown links | PASS |
| Secret scan | PASS |
| Absolute-path scan | PASS |
| Source-project coupling scan | PASS |
| Application-code exclusion | PASS |
| `make validate` | PASS |

## Notes

- Checksums must be verified from `reference/source-export/source-tree/` (paths in `CHECKSUMS.sha256` are relative to that directory).
- Static validation does not invoke Claude, Codex, or Cursor.
- Cross-provider review script was not executed (no paid model calls).

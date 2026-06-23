.PHONY: validate validate-ai-workflows

validate: validate-ai-workflows

validate-ai-workflows:
	bash scripts/validate-ai-workflows.sh

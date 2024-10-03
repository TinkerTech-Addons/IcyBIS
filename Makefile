.DEFAULT_GOAL := help

# --------------- General Commands --------------- #
.PHONY: help
help: ## Display all Makefile targets and variables.
	@./scripts/makefile-help.sh $(MAKEFILE_LIST)

.PHONY: version
version: ## Displays the pymdf, Python and Platform versions.
	@python -c "import icybis.version; print(icybis.version.version_info())"



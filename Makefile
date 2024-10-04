.DEFAULT_GOAL := help
ADDON_VERSION :=  NONE ## The addon tag/version to release

# --------------- General Commands --------------- #
.PHONY: help
help: ## Display all Makefile targets and variables.
	@./scripts/makefile-help.sh ${MAKEFILE_LIST}

.PHONY: version
version: ## Displays the pymdf, Python and Platform versions.
	@python -c "import icybis.build; print(f'Version: {icybis.build._get_addon_version()}\nBuild Date: {icybis.build._get_addon_build_date()}')"

.PHONY: release
release: ## make a commit and push a tag for a new release
	git commit -m "IcyBIS v${ADDON_VERSION} release"
	git tag v${ADDON_VERSION}
	git push --atomic origin main v${ADDON_VERSION}

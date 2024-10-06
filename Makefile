.DEFAULT_GOAL := help
ADDON_VERSION := NONE ## The addon tag/version to release
ENVIRONMENT := venv

# --------------- General Commands --------------- #
.PHONY: help
help: ## Display all Makefile targets and variables.
	@./scripts/makefile-help.sh ${MAKEFILE_LIST}

.PHONY: env
env: ## Creates a new Python3 virtual environment
	python3 -m venv ${ENVIRONMENT}

.PHONY: version
version: ## Displays the pymdf, Python and Platform versions.
	@python -c "import icybis.build; print(f'Version: {icybis.build._get_addon_version()}\nBuild Date: {icybis.build._get_addon_build_date()}')"

# --------------- Addon Commands --------------- #
.PHONY: install
install: ## Install the IcyBIS-Build package.
	pip install git+https://github.com/TinkerTech-Addons/IcyBIS-Build.git

.PHONY: build
build: ## Build IcyBIS tables
	icybis build

.PHONY: release
release: ## make a commit and push a tag for a new release
	git add --all; \
	git commit -m "IcyBIS v${ADDON_VERSION} release"; \
	git tag v${ADDON_VERSION}; \
	git push --atomic origin main v${ADDON_VERSION}; \

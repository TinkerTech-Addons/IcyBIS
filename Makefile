.DEFAULT_GOAL := help

# --------------- General Commands --------------- #
.PHONY: help
help: ## Display all Makefile targets and variables.
	@./scripts/makefile-help.sh $(MAKEFILE_LIST)

.PHONY: version
version: ## Displays the pymdf, Python and Platform versions.
	@python -c "import icybis.version; print(icybis.version.version_info())"

.PHONY: clean
clean: ## Remove build, cache and venv files.
	deactivate
	rm -rf .ruff_cache
	rm -rf build
	rm -rf dist
	rm -rf .pytest_cache
	rm -rf venv
	find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf

# --------------- Python Commands --------------- #

.PHONY: venv
venv:  ## Create and activate python3 virtual environment.
	python3 -m venv venv

.PHONY: install
install: ## Install python module with dev dependencies in editor mode.
	pip install -e .[dev]

.PHONY: init
init: ## Initalize and activate Python virtual environemnt and install dependencies.
	make venv
	make install

.PHONY: lint
lint: ## Lints all python files aginst pyproject.toml ruff config.
	ruff check

.PHONY: lint-fix
lint-fix: ## Lints all python files aginst pyproject.toml ruff config and fixes avaliable issues.
	ruff check --fix

.PHONY: format
format: ## Formats all python files aginst pyproject.toml ruff config.
	ruff format

# --------------- Hatch Versioning --------------- #
.PHONY: major
major: ## Bump the module version by one major version (2.0.0).
	hatch version major

.PHONY: minor
minor: ## Bump the module version by one minor version (1.1.0). 
	hatch version minor

.PHONY: micro
micro: ## Bump the module version by one micro version (1.0.1).
	hatch version micro

.PHONY: patch
patch: ## Bump the module version by one micro version (1.0.1).
	hatch version patch

.PHONY: fix
fix: ## Bump the module version by one micro version (1.0.1).
	hatch version fix

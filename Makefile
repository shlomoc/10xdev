VENV_DIR ?= venv
MKDOCS := $(VENV_DIR)/bin/mkdocs

.PHONY: setup serve build

setup:
	./scripts/setup.sh

serve:
	$(MKDOCS) serve

build:
	$(MKDOCS) build

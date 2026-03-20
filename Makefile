.PHONY: setup serve build

setup:
	./scripts/setup.sh

serve:
	mkdocs serve

build:
	mkdocs build

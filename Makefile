.PHONY: install build package-install uninstall gendiff lint lint-fix test check coverage

install:
	uv sync

build:
	uv build

package-install:
	uv tool install dist/*.whl

uninstall:
	uv tool uninstall hexlet-code

gendiff:
	uv run gendiff

lint:
	ruff check gendiff

lint-fix:
	ruff check gendiff --fix

test:
	pytest

coverage:
	coverage run -m pytest
	coverage xml

check: lint test

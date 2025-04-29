.PHONY: install build package-install uninstall gendiff lint lint-fix test check format coverage

install:
	uv sync
	uv pip install ruff pytest black coverage

build:
	uv build

package-install:
	uv tool install dist/*.whl

uninstall:
	uv tool uninstall hexlet-code

gendiff:
	uv run gendiff

lint:
	@command -v ruff >/dev/null 2>&1 || { echo >&2 "ruff not installed. Run 'make install' first."; exit 1; }
	ruff check gendiff

lint-fix:
	@command -v ruff >/dev/null 2>&1 || { echo >&2 "ruff not installed. Run 'make install' first."; exit 1; }
	ruff check gendiff --fix

test:
	@command -v pytest >/dev/null 2>&1 || { echo >&2 "pytest not installed. Run 'make install' first."; exit 1; }
	pytest

format:
	@command -v black >/dev/null 2>&1 || { echo >&2 "black not installed. Run 'make install' first."; exit 1; }
	black gendiff tests

coverage:
	@command -v coverage >/dev/null 2>&1 || { echo >&2 "coverage not installed. Run 'make install' first."; exit 1; }
	coverage run -m pytest
	coverage xml

check: lint test

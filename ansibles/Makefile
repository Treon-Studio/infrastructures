.PHONY: setup lint test clean

setup:
	poetry install

lint:
	poetry run yamllint .
	poetry run ansible-lint

test:
	poetry run molecule test

test-role:
	cd roles/$(role) && poetry run molecule test

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".tox" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} + 
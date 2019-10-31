#!/bin/sh

echo "Running Rubocop..."
#git diff --diff-filter=d --name-only origin/master | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs rubocop --format json
git diff-tree -r --no-commit-id --name-only master@\{u\} head | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs rubocop

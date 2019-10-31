#!/bin/sh

set -e

echo "Running Rubocop on these files...."
sh -c "git diff --diff-filter=d --name-only origin/master | xargs ls -1 2>/dev/null | grep '\.rb$''"

echo "Running Rubocop..."
sh -c "git diff --diff-filter=d --name-only origin/master | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs rubocop --format json"

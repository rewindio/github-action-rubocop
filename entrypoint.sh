#!/bin/sh

set -e

echo "Running Rubocop on these files...."
git diff --diff-filter=d --name-only origin/master | xargs ls -1 2>/dev/null | grep '\.rb$'

echo "Running Rubocop..."
git diff --diff-filter=d --name-only origin/master | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs rubocop --format json

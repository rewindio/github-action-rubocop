#!/bin/sh

echo "Running Rubocop..."
git diff --diff-filter=d --name-only origin/master |grep '\.rb$' |xargs rubocop

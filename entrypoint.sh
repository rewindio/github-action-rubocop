#!/bin/sh

set -e

sh -c "git diff --diff-filter=d --name-only origin/master"
sh -c "git diff --diff-filter=d --name-only origin/master | xargs rubocop --format json"

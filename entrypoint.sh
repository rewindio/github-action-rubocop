#!/bin/sh

echo "Running Rubocop..."

# With problem matchers in a container, the matcher config MUST be available outside the container on the VM
# So we will just copy it into the workspace
matcher_path=`pwd`/rubocop-problem-matcher.json
cp /rubocop-problem-matcher.json "$matcher_path"

# Note here that we do not use the matcher-path since this is a bind mount into the container
# and is not the same path outside the container on the VM.  Instead, just use current dir
echo "::add-matcher::rubocop-problem-matcher.json"   

file_list=$(git diff --diff-filter=d --name-only origin/master |grep '\.rb$')

if [ -z "$file_list" ]; then
        echo "No Ruby file changes to scan"
        exit 0
else
        echo "$file_list" |xargs rubocop
fi
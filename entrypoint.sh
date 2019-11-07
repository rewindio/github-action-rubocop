#!/bin/sh

echo "Running Rubocop..."

matcher=`pwd`/../.github/rubocop-problem-matcher.json
echo "::add-matcher::$matcher"   

file_list=$(git diff --diff-filter=d --name-only origin/master |grep '\.rb$')

if [ -z "$file_list" ]; then
        echo "No Ruby file changes to scan"
        exit 0
else
        echo "$file_list" |xargs rubocop
fi
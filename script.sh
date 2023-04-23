#!/usr/bin/env bash

# save this file
git add -A;
git commit -m "Adding Script" -S;
# git push -u origin master;

for BRANCH in {1..1000}; do
    git checkout -B $BRANCH;
    touch $BRANCH;
    git add -A;
    git commit -m "Adding $BRANCH" -S;
    # git push --set-upstream origin $BRANCH;
    git checkout master;
done;

git merge $(seq -s ' ' 1 1000) -S;
git push --all;

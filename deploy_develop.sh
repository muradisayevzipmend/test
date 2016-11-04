#!/bin/bash
lastCommit=$(git log --format="%H" -n 1)
commitId=${lastCommit:0:7}	
echo "Last commit id is: "$commitId


echo "Last build id is: "$LAST_BUILD

changedFiles=$(git diff --no-commit-id --name-only -r $lastBuild $commitId)

echo $changedFiles

echo "Storing lastt commit id"
export LAST_BUILD=$commitId
echo "Last build id is now: "$LAST_BUILD
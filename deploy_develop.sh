#!/bin/bash
lastCommit=$(git log --format="%H" -n 1)
commitId=${lastCommit:0:7}	
echo "Last commit id is: "$commitId

lastBuild=$(<last_build)

echo "Last build id is: "$lastBuild

changedFiles=$(git diff --no-commit-id --name-only -r $lastBuild $commitId)

echo $changedFiles
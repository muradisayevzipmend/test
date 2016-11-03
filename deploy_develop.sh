#!/bin/bash
lastCommit=$(git show --summary)
	arr=($lastCommit)
	lastCommit=${arr[4]}
echo $lastCommit

lastBuild=$(<last_build)

changedFiles=$(git diff --no-commit-id --name-only -r $lastBuild $lastCommit)

echo $changedFiles
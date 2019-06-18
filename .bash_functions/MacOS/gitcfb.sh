#!/bin/bash

# copy a file from a different git branch to the current one
gitcfb() {
	if [[ $# -ne 2 ]] ; then
		echo "gitcfb: err: incorrect number of arguments"
		return 1
	fi

	BRANCHES=( `git branch` )
	FOUND=0
	BRANCH=""
	for B in "${BRANCHES[@]}" ; do
		if [[ $B == "$1" ]] ; then FOUND=1 ; BRANCH="$B" ; fi 
	done
	if [[ $FOUND -eq 0 ]] ; then
		echo "gitcfb: err: $1 is not a local git branch"
		return 1
	fi

	git checkout "$1" -- "$2"
}

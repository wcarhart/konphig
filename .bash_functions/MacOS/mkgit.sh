#!/bin/bash

# make a new git repo
mkgit() {
	if [[ $# -ne 1 ]] ; then
		echo "mkgit: err: incorrect number of arguments"
		return 1
	fi

	mkdir -p "$1"
	cd "$1"
	git init
}

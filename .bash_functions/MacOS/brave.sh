#!/bin/bash

# open a file in Brave browser from the command line
brave() {
	if [[ $# -eq 0 ]] ; then
		echo "brave: err: incorrect number of arguments"
		return 1
	fi
	for ARG in "$@" ; do
		open -a "Brave Browser" "$ARG"
	done
}

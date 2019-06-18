#!/bin/bash

# open a file in Google Chrome from the command line
chrome() {
	if [[ $# -eq 0 ]] ; then
		echo "chrome: err: incorrect number of arguments"
		return 1
	fi
	for ARG in "$@" ; do
		open -a "Google Chrome" "$ARG"
	done
}

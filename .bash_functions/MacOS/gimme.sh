#!/bin/bash

# gives the current user execution privileges for a file
gimme() {
	if [[ $# -eq 0 ]] ; then
		echo "gimme: err: incorrect number of arguments"
		return 1
	fi

	for ARG in "$@" ; do
		chmod +x "$ARG"
	done
}

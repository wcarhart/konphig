#!/bin/bash

# fix lines
fixlines() {
	if [[ $# -eq 0 ]] ; then
		echo "fixlines: err: incorrect number of arguments"
		return 1
	fi

	for FILE in "$@" ; do
		sed -i.bak 's/\r$//' "$FILE"
	done
}

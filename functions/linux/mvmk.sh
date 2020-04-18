#!/bin/bash

# make directory and move files into it
mvmk() {
	if [[ $# -lt 2 ]] ; then
		echo "mkmv: err: incorrect number of arguments"
		return 1
	fi

	for DIR ; do true ; done
	mkdir -p "$DIR"
	for FILE in ${*: 1:$#-1} ; do
		mv "$FILE" "$DIR"
	done
}

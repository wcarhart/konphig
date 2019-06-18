#!/bin/bash

# make directory prefixed with the date
mkdate() {
	if [[ $# -eq 0 ]] ; then
		echo "mkdate: err: incorrect number of arguments"
		return 1
	fi

	for ARG in "$@" ; do
		DIR="`date +%F`-$ARG"
		if [[ ! -d "$DIR" ]] ; then
			mkdir "$DIR"
		fi
	done
}

#!/bin/bash

# grep and pause
grepp() {
	if [[ $# -ne 2 ]] ; then
		echo "grepp: err: incorrect number of arguments"
		return 1
	fi

	while IFS= read -r RESULT ; do
		echo "$RESULT"
		read </dev/tty
	done < <(grep "$1" $2)
}

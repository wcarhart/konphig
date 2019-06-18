#!/bin/bash

# count the number of files in a directory and its subdirectories
cf() {
	if [[ $# -gt 0 ]] && [[ ! -d "$1" ]] ; then
		echo "cf: err: no such directory $1"
		return 1
	fi

	NUM=`find ${1:-"."}/ -type f | wc -l`
	echo "$NUM files"
}

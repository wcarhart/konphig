#!/bin/bash

# output the most recently modified item
last() {
	if [[ $# -eq 0 ]] ; then
		DIR=`readlink -m .`
	else
		DIR=`readlink -m "$1"`
	fi

	if [[ ! -d $DIR ]] ; then
		echo "last: err: no such directory $DIR"
		return 1
	fi

	ls -at $DIR | head -1
}

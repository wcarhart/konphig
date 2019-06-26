#!/bin/bash

# output the most recently modified item
last() {
	if [[ $# -eq 0 ]] ; then
		DIR=`greadlink -m .`
	else
		DIR=`greadlink -m "$1"`
	fi

	if [[ ! -d $DIR ]] ; then
		echo "last: err: no such directory $DIR"
		return 1
	fi

	ls -at $DIR | head -1
}

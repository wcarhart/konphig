#!/bin/bash

# move up and over when changing directories
over() {
	if [[ $# -eq 0 ]] || [[ $# -gt 2 ]] ; then
		echo "over: err: incorrect number of arguments"
		return 1
	fi

	if [[ $# -eq 1 ]] ; then
		NUM=1
		DIR="$1"
	else
		NUM="$1"
		DIR="$2"
	fi

	if [[ "$DIR" == "" ]] ; then
		echo "over: err: missing target directory"
		return 1
	fi

	[ -n "$NUM" ] && [ "$NUM" -eq "$NUM" ] 2>/dev/null
	if [ $? -ne 0 ]; then
		echo "over: err: number of parent directories must be a number"
		return 1
	fi

	PRE=""
	for i in `seq 1 $NUM` ; do
		PRE="../$PRE"

	done

	if [[ ! -d "$PRE$DIR" ]] ; then
		echo "over: err: no such directory $PRE$DIR"
		return 1
	fi

	cd $PRE$DIR
	pwd

	export __UPDIR__=`pwd`
}

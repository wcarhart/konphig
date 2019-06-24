#!/bin/bash

# snag recently downloaded files to the current directory
snag() {
	if [[ $# -eq 0 ]] ; then
		NUM=1
	else
		NUM=$1
	fi

	[ -n "$NUM" ] && [ "$NUM" -eq "$NUM" ] 2>/dev/null
	if [[ $? -ne 0 ]] ; then
		echo "snag: err: argument must be a number"
		return 1
	fi

	if [[ ! -d ~/Downloads ]] ; then
		echo "snag: err: no such directory ~/Downloads"
		return 1
	fi

	for i in `seq 1 $NUM` ; do
		FILE=`ls -t ~/Downloads | head -1`
		mv ~/Downloads/"$FILE" .
	done
}

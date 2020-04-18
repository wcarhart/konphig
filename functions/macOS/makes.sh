#!/bin/bash

# make a shell script out of the last x commands
makes() {
	fc -rnl > /dev/null 2>&1
	if [[ $? -ne 0 ]] ; then 
		echo "makes: err: history is empty"
		return 1
	fi

	if [[ $# -eq 0 ]] ; then
		NUM=1
		NAME="script.sh"
	elif [[ $# -eq 1 ]] ; then
		NUM=$1
		NAME="script.sh"
	elif [[ $# -eq 2 ]] ; then
		NUM=$1
		NAME=$2
	else
		echo "makes: err: incorrect number of arguments"
		return 1
	fi

	[ -n "$NUM" ] && [ "$NUM" -eq "$NUM" ] 2>/dev/null
	if [ $? -ne 0 ]; then
		echo "makes: err: first argument must be a number"
		return 1
	fi
	if [[ $NUM -lt 1 ]] ; then
		echo "makes: err: first argument must be a positive integer"
		return 1
	fi

	NAMESTR=( $NAME )
	if [[ ${#NAMESTR[@]} -gt 1 ]] ; then
		echo "makes: err: name of function cannot contain spaces"
		return 1
	fi

	RANDO=`random`
	fc -rnl | head -$NUM > $RANDO
	tac $RANDO > $NAME
	rm -rf $RANDO
}

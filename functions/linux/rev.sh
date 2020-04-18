#!/bin/bash

# reverse input
rev() {
	if [[ $# -eq 0 ]] ; then
		__=""
		_stdin=""

		read -N1 -t1 __ && {
			(( $? <= 128 )) && {
				IFS= read -rd '' _stdin
				_stdin="$__$_stdin"
			}
		}

		VAL=$_stdin
		if [[ "$VAL" == "" ]] ; then
			echo "rev: err: no input found on stdin"
			return 1
		fi
	else
		if [[ $# -eq 0 ]] ; then
			echo "rev: err: incorrect number of arguments"
			return 1
		fi
		VAL="$@"
	fi
	echo "$VAL" | sed $'s/./&\\\n/g' | sed -ne $'x;H;${x;s/\\n//g;p;}'
}

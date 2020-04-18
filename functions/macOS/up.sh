#!/bin/bash

# change up multiple directories
up() {
	if [[ "$__UPDIR__" == "" ]] || [[ "$__UPDIR__" != *`pwd`* ]] ; then
		export __UPDIR__=`pwd`
	fi
	if [[ -z $1 ]] ; then
		cd ..
	elif [[ $1 -gt 0 ]] ; then
		let COUNT=1
		CDSTR=".."
		while [[ $COUNT -lt $1 ]] ; do
			CDSTR="$CDSTR/.."
			let COUNT=COUNT+1
		done
		cd $CDSTR
	else
		echo "up: err: argument must be a positive integer"
		return 1
	fi
	pwd
}

#!/bin/bash

# add to PATH variable
pathadd() {
	if [[ $# -eq 0 ]] ; then
		echo "pathadd: err: incorrect number of arguments"
		return 1
	fi

	NEW=${1%/}
	if [[ -d "$1" ]] && ! echo "$PATH" | grep -E -q "(^|:)$NEW($|:)" ; then
		if [[ "$2" == "after" ]] ; then
			export PATH="$PATH:$NEW"
		else
			export PATH="$NEW:$PATH"
		fi
	fi
}

#!/bin/bash

# change directory and list contents
cdls() {
	if [[ $# -eq 0 ]] ; then
		ls
	elif [[ ! -d "$1" ]] ; then
		echo "cdls: err: $1 is not a directory"
		return 1
	else
		cd "$@" && ls
	fi
}

#!/bin/bash

# changes permissions for a specific file
grab() {
	if [[ $# -eq 0 ]] ; then
		echo "grab: err: incorrect number of arguments"
		return 1
	fi

	if [[ "$USER" == "" ]] ; then
		echo "grab: err: current user is null"
		return 1
	fi

	if [[ -f "$1" ]] ; then
		chown $USER "$1"
	elif [[ -d "$1" ]] ; then
		chown -R $USER "$1"
	else
		echo "Can't grab $1"
		return 1
	fi
}

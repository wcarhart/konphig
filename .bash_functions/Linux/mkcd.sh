#!/bin/bash

# make directory and change into it
mkcd() {
	if [[ $# -ne 1 ]] ; then
		echo "mkcd: err: incorrect number of arguments"
		return 1
	fi
		
	mkdir -p "$1" && cd "$1"
}

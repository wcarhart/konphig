#!/bin/bash

# remove all subdirectories from a directory
rmd() {
	if [[ $# -eq 0 ]] ; then
		rm -rf -- */
	elif [[ $# -eq 1 ]] ; then
		rm -rf -- "$1"/*/
	else
		echo "rmd: err: incorrect number of arguments"
		return 1
	fi
}

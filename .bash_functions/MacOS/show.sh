#!/bin/bash

# list all files of specific type
show() {
	if [[ $# -eq 0 ]] ; then
		echo "show: err: incorrect number of arguments"
		return 1
	elif [[ $# -eq 1 ]] ; then
		find . -type f -name "*.$1"
	else
		while [[ $# -ne 0 ]] ; do
			printf "\033[94m.$1 files:\033[0m\n"
			find . -type f -name "*.$1"
			echo
			shift
		done
	fi
}

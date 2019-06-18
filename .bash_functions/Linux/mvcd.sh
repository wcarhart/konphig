#!/bin/bash

# move files and change directory
mvcd() {
	if [[ $# -lt 2 ]] ; then
		echo "mvcd: err: incorrect number of arguments"
		return 1
	fi
	
	mv "$@"
	for LAST ; do true ; done
	cd $LAST
}

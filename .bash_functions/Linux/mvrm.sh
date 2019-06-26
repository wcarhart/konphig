#!/bin/bash

# move all files in current directory to different directory and delete current directory
mvrm() {
	if [[ $# -ne 1 ]] ; then
		echo "mvrm: err: incorrect number of arguments"
		return 1
	fi

  DIR=`readlink -m "$1"`

  if [[ ! -d "$DIR" ]] ; then
    echo "mvrm: err: no such directory $DIR"
    return 1
  fi

  if [[ `pwd` == "$DIR" ]] ; then
    echo "mvrm: err: cannot remove the current directory"
    return 1
  fi

	mv * "$DIR"
	OLD=`pwd`
	cd "$DIR"
	rm -rf "$OLD"
}

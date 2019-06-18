#!/bin/bash

# follow a directory tree down to its childmost directory
dive() {
    if [[ $# -ne 1 ]] ; then
        echo "dive: err: incorrect number of arguments"
        return 1
    fi
    
    if [[ ! -d "$1" ]] ; then
        echo "dive: err: no such directory $1"
        return 1
    fi

    TARGET="`greadlink -m $1`"
    END=0
    while [[ $END -eq 0 ]] ; do
        DIRS=()
        for THING in $TARGET/* ; do if [[ -d $THING ]] ; then DIRS+=( "`basename $THING`" ) ; fi ; done
        if [[ ${#DIRS[@]} -eq 1 ]] ; then TARGET="$TARGET/${DIRS[0]}" ; END=0 ; else END=1 ; fi
    done
    cd "$TARGET"
    pwd 
}

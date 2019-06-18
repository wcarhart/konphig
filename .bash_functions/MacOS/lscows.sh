#!/bin/bash

# list all cows
lscows() {
	COWS=`cowsay -l | tail -n +2 | tr ' ' '\n'`
	for COW in $COWS ; do cowsay -f $COW $COW ; done
}

#!/bin/bash

# remove duplicates from PATH variable (deduplicate)
pathdedup() {
	export PATH=`printf %s "$PATH" | awk -v RS=: -v ORS=: '!arr[$0]++'`
}

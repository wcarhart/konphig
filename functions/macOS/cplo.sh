#!/bin/bash

# copy output from previous command to Mac clipboard (CoPy Last command Output)
cplo() {
	RAW=`history | tail -2 | head -1`
	CMD=( $RAW )
	OUTPUT=`"${CMD[@]:1}"`
	echo -n "$OUTPUT" | pbcopy
}


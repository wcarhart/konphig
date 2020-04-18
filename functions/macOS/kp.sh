#!/bin/bash

# kill process by name
kp() {
	if [[ $# -ne 1 ]] ; then
		echo "kp: err: incorrect number of arguments"
		return 1
	fi

	ps aux | grep "$1" > /dev/null
	PID=`pgrep "$1"`
	if [[ "$PID" != "" ]] ; then
		kill -9 $PID
		if [[ "$?" == "0" ]] ; then
			echo "PID $PID ($1) killed"
		fi
	else
		echo "kp: err: no processes killed, could not find PID for process $1"
		return 1
	fi
}

#!/bin/bash

# remove a BASH Function by name
rmf() {
	if [[ $# -ne 1 ]] ; then
		echo "rmf: err: incorrect number of arguments"
		return 1
	fi

	if [[ "${1: -2:2}" == "()" ]] ; then
		FUNCTION="${1:0:-2}"
	else
		FUNCTION="$1"
	fi

	if [[ -d ~/.bash_functions ]] ; then
		FILENAME="$FUNCTION.sh"
		if [[ ! -f ~/.bash_functions/$FILENAME ]] ; then
			echo "rmf: err: $FUNCTION.sh not found in ~/.bash_functions"
			return 1
		fi
		rm -rf ~/.bash_functions/$FILENAME
	else
		if [[ ! -f ~/.bashrc ]] ; then
			echo "rmf: err: no such directory ~/.bash_functions, no such file ~/.bashrc"
			return 1
		fi

		RANDO=`random`
		TITLE="$FUNCTION() {"
		EDIT=0
		FOUND=0
		COUNT=0
		while IFS='' read -r LINE || [[ -n "$LINE" ]] ; do
			if [[ "$TITLE" == "$LINE" ]] && [[ $EDIT -eq 0 ]] ; then
				EDIT=1
				FOUND=1
			elif [[ "$LINE" == "}" ]] && [[ $EDIT -eq 1 ]] ; then
				EDIT=0
				COUNT="$(( $COUNT + 1 ))"
			else
				if [[ $EDIT -eq 0 ]] ; then
					printf "%s\n" "$LINE" >> $RANDO
				fi
			fi
		done < ~/.bashrc

		cat $RANDO > ~/.bashrc
		rm -rf $RANDO
		if [[ $FOUND -eq 0 ]] ; then
			echo "rmf: err: $FUNCTION not found in ~/.bashrc"
			return 1
		else
			if [ $COUNT -eq 1 ] ; then
				echo "Removed $FUNCTION from ~/.bashrc"
				source ~/.bashrc
			else
				echo "Removed $FUNCTION $COUNT times from ~/.bashrc"
				source ~/.bashrc
			fi
		fi
	fi
}

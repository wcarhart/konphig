# clear a file
clear() {
	if [[ $# -eq 0 ]] ; then
		command clear
	else
		for FILE in "$@" ; do
			if [[ -f "$FILE" ]] ; then
				> "$FILE"
			fi
		done
	fi
}

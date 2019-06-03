# go back down one directory if we go up one too many
down() {
	TO="$__UPDIR__"
	if [[ "$TO" == "" ]] ; then
		pwd
		return 0
	fi

	if [[ $# -gt 0 ]] ; then
		[ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null
		if [[ $? -ne 0 ]] ; then
			echo "down: err: argument must be a number"
			return 1
		fi
	fi

	FROM="`pwd`"
	for i in $(seq 1 $1) ; do
		TARGET="${TO##$FROM}"
		if [[ "$TARGET" == "" ]] ; then
			pwd
			return 0
		fi
		
		TARGETARR=(${TARGET//// })
		FROM="`readlink -m $FROM/${TARGETARR[0]}`"
	done

	cd "$FROM"
	pwd
}

# remove files at random
del() {
	FILES=()
	for FILE in * ; do if [[ -f "$FILE" ]] ; then FILES+=( "$FILE" ) ; fi ; done
	for INDEX in `seq 1 ${1:-1}` ; do
		TEMPFILE="${FILES[$RANDOM % ${#FILES[@]} ]}"
		rm "$TEMPFILE"
		TEMPARR=()
		for FILE in "${FILES[@]}" ; do if [[ "$FILE" != "$TEMPFILE" ]] ; then TEMPARR+=( "$FILE" ) ; fi ; done
		FILES=( ${TEMPARR[@]} )
	done
}

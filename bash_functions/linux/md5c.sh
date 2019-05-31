# check if the md5 hashes of two files match
md5c() {
	if [[ $# -eq 0 ]] ; then
		echo "md5c: err: incorrect number of arguments"
		return 1
	fi

	if [[ $# -eq 1 ]] ; then
		echo "$1 `md5sum "$1" | awk '{print $1}'`"
		return 0
	fi

	for FILE in $@ ; do
		if [[ ! -f $FILE ]] ; then
			echo "md5c: err: no such file $FILE"
			return 1
		fi
	done

	FILES=()
	HASHES=()
	for FILE in $@ ; do
		FILES+=( "$FILE" )
		HASHES+=( `md5sum "$FILE" | awk '{print $1}'` )
	done

	mapfile -t uniq < <(printf "%s\n" "${HASHES[@]}" | sort -u)
	if (( ${#uniq[@]} > 1 )); then
		echo "FAIL"
	else
		echo "PASS"
	fi

	OUTPUT=""
	for INDEX in `seq 0 $(( ${#FILES[@]} - 1 ))` ; do
		OUTPUT="$OUTPUT\n${FILES[$INDEX]} ${HASHES[$INDEX]}"
	done
	printf "$OUTPUT" | column -t
}

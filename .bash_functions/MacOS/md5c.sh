#!/bin/bash

# check if the md5 hashes of files match
md5c() {
	if [[ $# -eq 0 ]] ; then
		echo "md5c: err: incorrect number of arguments"
		return 1
	fi

	for FILE in $@ ; do
		if [[ ! -f $FILE ]] ; then
			echo "md5c: err: no such file $FILE"
			return 1
		fi
	done

	if [[ $# -eq 1 ]] ; then
		echo "$1 `md5 -q "$1" | awk '{print $1}'`"
		return 0
	fi

	FILES=()
	HASHES=()
	for FILE in $@ ; do
		FILES+=( "$FILE" )
		HASHES+=( `md5 -q "$FILE" | awk '{print $1}'` )
	done

	EQUAL=1
	for H1 in "${HASHES[@]}" ; do
		for H2 in "${HASHES[@]}" ; do
			if [[ "$H1" != "$H2" ]] ; then EQUAL=0 ; break ; fi
		done
		if [[ $EQUAL -eq 0 ]] ; then break ; fi
	done
	
	if [[ $EQUAL -eq 0 ]] ; then
		echo "FAIL"
	else
		echo "PASS"
	fi

	for INDEX in `seq 0 $(( ${#FILES[@]} - 1 ))` ; do
		echo "${FILES[$INDEX]} ${HASHES[$INDEX]}"
	done
}

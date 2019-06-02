# show percentage of each filetype in the current directory
per() {
	declare -A FILES
	TOTAL=0
	for FILE in * ; do
		if [[ ! -f $FILE ]] ; then continue ; fi
		TOTAL=$(( TOTAL + 1 ))
		PARTS=( ${FILE//./ } )
		PARTS=( "${PARTS[@]:1}" )
		if [[ ${#PARTS[@]} -eq 0 ]] ; then
			FILES['Extensionless']="${FILES['Extensionless']} $FILE"
		else
			EXT=${PARTS[0]}`for PART in ${PARTS[@]:1} ; do printf ".$PART" ; done`
			FILES["$EXT"]="${FILES["$EXT"]} $FILE"
		fi
	done

	if [[ ${#FILES[@]} -eq 0 ]] ; then
		echo "No files here"
		return 0
	fi

	OUT=""
	for TYPE in "${!FILES[@]}" ; do
		NUM=`for LISTSTR in "${FILES[$TYPE]}" ; do LIST=( $LISTSTR ) ; for FILE in "${LIST[@]}" ; do echo $FILE ; done ; done | wc -l`
		PER=`echo "scale=10; $NUM/$TOTAL" | bc`
		PER=`echo "scale=10; $PER * 100" | bc`
		PER=`printf '%.2f' "$(echo "scale=2; $PER/1" | bc)"`
		OUT="$OUT\n$TYPE~($PER%)"
	done

	echo -e "$OUT" | sed -e 's/Extensionless/No Extension/' | column -t -s '~'
}

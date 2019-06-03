# get disk usage in a nicer format
dup() {
	DIR=${1:-"./"}
	DIR=`echo "$DIR/" | sed -e 's;//;/;'`
	if [[ ! -d "$DIR" ]] ; then
		echo "dup: err: $1 is not a valid directory"
	fi

	du -sh --apparent-size "$DIR"*
	DU=`du -sh --apparent-size "$DIR"`
	read -ra ARR <<<"$DU"
	echo " TOTAL: ${ARR[0]}"
}

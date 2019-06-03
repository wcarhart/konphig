# sort by size of current directory
sbs() {
	DIR=${1:-"./"}
	DIR=`echo "$DIR/" | sed -e 's;//;/;'`
	if [[ ! -d "$DIR" ]] ; then
		echo "sbs: err: $1 is not a valid directory"
	fi

	du -hs "$DIR"* | sort -h	
}

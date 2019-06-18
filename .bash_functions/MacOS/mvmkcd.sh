# move files into new directory and change into it
mvmkcd() {
	if [[ $# -lt 2 ]] ; then
		echo "mvmkcd: err: incorrect number of arguments"
		return 1
	fi

	for DIR ; do true ; done
	mkdir -p "$DIR"
	for FILE in ${*: 1:$#-1} ; do
		mv "$FILE" "$DIR"
	done
	cd "$DIR"
}
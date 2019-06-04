# copy files into new directory and change into it
cpmkcd() {
	if [[ $# -lt 2 ]] ; then
		echo "cpmkcd: err: incorrect number of arguments"
		return 1
	fi

	for DIR ; do true ; done
	mkdir -p "$DIR"
	for FILE in ${*: 1:$#-1} ; do
		cp "$FILE" "$DIR"
	done
	cd "$DIR"
}

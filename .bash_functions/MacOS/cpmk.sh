# copy files into new directory
cpmk() {
	if [[ $# -lt 2 ]] ; then
		echo "cpmk: err: incorrect number of arguments"
		return 1
	fi

	for DIR ; do true ; done
	mkdir -p "$DIR"
	for FILE in ${*: 1:$#-1} ; do
		cp "$FILE" "$DIR"
	done
}

# make directory prefixed with the date and change into it
mkcddate() {
	if [[ $# -ne 1 ]] ; then
		echo "mkcddate: err: incorrect number of arguments"
		return 1
	fi

	DIR="`date +%F`-$1"
	if [[ ! -d "$DIR" ]] ; then
		mkdir "$DIR"
	fi
	cd "$DIR"
}

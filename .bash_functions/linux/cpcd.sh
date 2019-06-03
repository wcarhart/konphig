# copy files and change directory
cpcd() {
	if [[ $# -lt 2 ]] ; then
		echo "cpcd: err: incorrect number of arguments"
		return 1
	fi

	cp "$@"
	for LAST ; do true ; done
	cd $LAST
}

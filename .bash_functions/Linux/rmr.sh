# remove files in directory and its subdirectories
rmr() {
	if [[ $# -eq 0 ]] ; then
		echo "rmr: err: incorrect number of arguments"
		return 1
	fi

	for ARG in "$@" ; do
		find . -name $ARG -delete
	done
}

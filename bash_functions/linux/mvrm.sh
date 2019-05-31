# move all files in current directory to different directory and delete current directory
mvrm() {
	if [[ $# -ne 1 ]] ; then
		echo "mvrm: err: incorrect number of arguments"
		return 1
	fi

	mv * "$1"
	OLD=`pwd`
	cd "$1"
	rm -rf "$OLD"
}

# select files at random from a directory
get() {
	FILES=( * )
	for INDEX in `seq 1 ${1:-1}` ; do
		echo "${FILES[$RANDOM % ${#FILES[@]} ]}"
	done
}

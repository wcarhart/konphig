# get disk usage for specific filetype
duf() {
	if [[ $# -eq 0 ]] ; then
		echo "duf: err: incorrect number of arguments"
		return 1
	fi

	for ARG in "$@"; do
		SIZE=`find . -name "*.$1" -print0 | xargs -0 du --apparent-size -ch | tail -n1`
		read -ra ARR <<<"$SIZE"
		echo "$1: ${ARR[0] - $1}"
		shift
	done
}

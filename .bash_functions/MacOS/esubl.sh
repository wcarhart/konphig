# execute a file and open it in Sublime
esubl() {
	if [[ $# -eq 0 ]] ; then
		echo "esubl: err: incorrect number of arguments"
		return 1
	fi

	if [[ ! -f "$1" ]] ; then
		echo "esubl: err: no such file $1"
		return 1
	fi

	FILE="$1"
	EXT="${FILE##*.}"
	subl "$1"
	case "$EXT" in
		"sh")	./"$@"			;;
		"py")	python3 "$@"	;;
		"rb")	ruby "$@"		;;
		"java")	java "$@"		;;
		*)		echo "eao: err: can't execute $1"
	esac
}

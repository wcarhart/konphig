# reverse input
rev() {
	if [[ $# -eq 0 ]] ; then
		echo "rev: err: incorrect number of arguments"
		return 1
	fi
	
	VAL="$@"
	echo "$VAL" | sed $'s/./&\\\n/g' | sed -ne $'x;H;${x;s/\\n//g;p;}'
}

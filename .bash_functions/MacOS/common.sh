# show most commonly used commands
common() {
	if [[ $# -ne 0 ]] ; then
		[ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null
		if [[ $? -ne 0 ]] ; then
			echo "common: err: argument must be a number"
			return 1
		elif [[ $1 -lt 1 ]] ; then
			echo "common: err: argument must be a positive integer"
			return 1
		fi
	fi

	history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head "-n${1:-10}"
}

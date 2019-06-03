# generate a random string of specified length, great for passwords
random() {
	if [[ $# -ne 0 ]] ; then
		[ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null 
		if [[ $? -ne 0 ]] ; then
			echo "random: err: argument must be a number"
			return 1
		fi
	fi
	
	shuf -zer -n${1:-30} {A..Z} {a..z} {0..9} && echo
}

# search for a process by name
psgrep() {
	if [[ $# -eq 0 ]] ; then
		echo "psgrep: err: incorrect number of arguments"
		return 1
	fi
	
	ps aux | head -1
	ps aux | grep "$1" | grep -v grep
}

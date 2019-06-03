# list what kinds of files are in a directory
what() {
	find ${1:-"."} -type f | perl -ne 'print "." . $1 if m/\.([^.\/]+)$/'
}

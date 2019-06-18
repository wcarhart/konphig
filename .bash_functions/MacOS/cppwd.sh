# copy current directory to clipboard
cppwd() {
	echo -n "`pwd`" | pbcopy
}

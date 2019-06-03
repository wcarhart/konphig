# remove from PATH variable
pathrm() {
	if [[ $# -eq 0 ]] ; then
		echo "pathrm: err: incorrect number of arguments"
		return 1
	fi
	
	for ARG in "$@" ; do
		export PATH=`echo $PATH | sed -e "s;\(^\|:\)${ARG%/}\(:\|\$\);\1\2;g" -e 's;^:\|:$;;g' -e 's;::;:;g'`
	done
}

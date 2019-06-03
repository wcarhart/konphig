# add a variable on the fly
addv() {
	if [[ $# -ne 2 ]] ; then
		echo "addv: err: incorrect number of arguments"
		return 1
	fi

	if [[ ! -f ~/.bash_variables ]] ; then
		F=~/.bashrc
	else
		F=~/.bash_variables
	fi

	echo "export $1=$2" >> $F
	source ~/.bashrc
}

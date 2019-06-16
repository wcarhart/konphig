# add an alias on the fly
adda() {
	if [[ $# -ne 2 ]] ; then
		echo "adda: err: incorrect number of arguments"
		return 1
	fi

	if [[ ! -f ~/.bash_aliases ]] ; then
		F=~/.bashrc
	else
		F=~/.bash_aliases
	fi

	echo "alias $1='$2'" >> $F
	source ~/.bashrc
}

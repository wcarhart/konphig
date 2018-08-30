# list of bash functions

# extracts compressed and zipped files automatically
extract() {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)		tar xjf $1		;;
			*.tar.gz)		tar xzf $1		;;
			*.bz2)			bunzip2 $1		;;
			*.rar)			unrar x $1		;;
			*.gz)			gunzip $1		;;
			*.tar)			tar xf $1		;;
			*.xz)			tar xJf $1		;;
			*.tbz2)			tar xjf $1		;;
			*.tgz)			tar xzf $1		;;
			*.zip)			unzip $1		;;
			*.Z)			uncompress $1	;;
			*)				echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# changes permissions for a specific file (requires sudo access!)
grab() {
	sudo chown -R ${USER} ${1:-.}
}

# search for a process by name
psgrep() {
	if [ ! -z $1 ] ; then
		echo "Grepping for process matching $1..."
		ps aux | grep $1 | grep -v grep
	else
		echo "psgrep: err: need name to grep for"
	fi
}

# fix lines
fixlines() {
	/usr/bin/perl -pi~ -e 's/\r\n?/\n/g' "$@" ;
}

# add an alias on the fly
adda() {
	if [ $# -ne 2 ] ; then
		echo "adda: err: incorrect number of arguments"
	else
		if [ ! ~/.bash_aliases ] ; then
			F=~/.bash_aliases
		else
			F=~/.bashrc
		fi

		echo "alias $1='$2'" >> $F
		source ~/.bashrc
	fi
}

# add a variable on the fly
addv() {
	if [ $# -ne 2 ] ; then
		echo "addv: err: incorrect number of arguments"
	else
		if [ ! ~/.bash_exports ] ; then
			F=~/.bash_exports
		else
			F=~/.bashrc
		fi

		echo "export $1=$2" >> $F
		source ~/.bashrc
	fi
}






















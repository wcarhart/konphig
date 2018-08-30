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

# add test files to directory
ranf() {
	if [ $# -eq 0 ] ; then
		val=100
	else
		val=$1
	fi
	touch test.txt
	for i in {0..50}; do echo "test test test test" >> test.txt; done
	for ((i=0; i<=val; i++)); do cat test.txt > test$i.txt; done
	rm -rf "test.txt"
}

# remove files in directory and its subdirectories
rmr() {
	if [ $# -eq 0 ] ; then
		echo "rmr: err: incorrect number of arguments"
	else
		for arg in "$@"; do
			find . -name $arg -delete
		done
	fi
}

# move files and change directory
mvcd() {
	if [ $# -ne 2 ] ; then
		echo "mvcd: err: incorrect number of arguments"
	else
		mv "$@"
		for last; do true; done
		cd $last
	fi
}

# move files, change directory, and delete source directory
# WARNING: will forcefully remove source, even if nonempty (use case is with *)
mvrm() {
	if [ $# -ne 2 ] ; then
		echo "mvrm: err: incorrect number of arguments"
	else
		if 
		mv "$@"
		OLD=$PWD
		for last; do true; done
		cd $last
		rm -rf $OLD
	fi
}

# copy files and change directory
cpcd() {
	if [ $# -ne 2 ] ; then
		echo "cpcd: err: incorrect number of arguments"
	else
		cp "$@"
		for last; do true; done
		cd $last
	fi
}

# copy files with progress bar and change directory
cppcd() {
	if [ $# -ne 2 ] ; then
		echo "cppcd: err: incorrect number of arguments"
	else
		rsync --progress "$@"
		for last; do true; done
		cd $last
	fi
}

# change directory and list contents
cdls() {
	if [ $# -ne 1 ] ; then
		echo "cdls: err: incorrect number of arguments"
	else
		cd $1
		ls
	fi
}

# make directory and change into it
mkcd() {
	if [ $# -ne 1 ] ; then
		echo "mkcd: err: incorrect number of arguments"
	else
		mkdir $1 && cd $1
	fi
}

# make directory and move files into it
# uses `destination source` syntax (opposite of mv)
mkmv() {
	if [ $# -ne 2 ] ; then
		echo "mkmv: err: incorrect number of arguments"
	else
		dir=$1
		shift
		mkdir $dir
		mv "$@" $dir
	fi
}

# make directory, move files into it, then change directory
# uses `destination source` syntax (opposite of mv)
mkmvcd() {
	if [ $# -ne 2 ] ; then
		echo "mkmvcd: err: incorrect number of arguments"
	else
		dir=$1
		shift
		mkdir $dir
		mv "$@" $dir
		cd $dir
	fi
}

# make directory and copy files into it
# uses `destination source` syntax (opposite of cp)
mkcp() {
	if [ $# -ne 2 ] ; then
		echo "mkcp: err: incorrect number of arguments"
	else
		dir=$1
		shift
		mkdir $dir
		cp "$@" $dir
	fi
}

# make directory, copy files into it, then change directory
# uses `destination source` syntax (opposite of cp)
mkcpcd() {
	if [ $# -ne 2 ] ; then
		echo "mkcpcd: err: incorrect number of arguments"
	else
		dir=$1
		shift
		mkdir $dir
		cp "$@" $dir
		cd $dir
	fi
}

# check if the md5sum's of two files match
md5c() {
	if [ $# -ne 2 ] ; then
		echo "md5c: err: incorrect number of arguments"
	else
		MD1="$(md5sum $1 | awk '{print $1}')"
		MD2="$(md5sum $2 | awk '{print $1}')"
		if [ "$MD1" == "$MD2" ] ; then
			echo "PASS $MD1"
		else
			echo "FAIL $MD1 $MD2"
		fi
	fi
}

# count the number of files in a directory and its subdirectories
cf() {
	if [ $# -eq 0 ] ; then
		dir="."
	else
		dir=$1
	fi
	num="$(find $dir -type f | wc -l)"
	echo "$num files"
}

# change up multiple directories
up() {
	if [ -z $1 ] ; then
		cd ..
	elif [ $1 -gt 0 ] ; then
		let count=1
		cdstr=".."
		while [ $count -lt $1 ] ; do
			cdstr="$cdstr/.."
			let count=count + 1
		done
		cd $cdstr
	else
		echo "up: err: argument must be a positive integer"
	fi
	pwd
}

# go back down one directory if we go up one too many
# TODO
down() {
	return
}












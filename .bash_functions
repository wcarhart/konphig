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
			F=~/.bashrc
		else
			F=~/.bash_aliases
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
			F=~/.bashrc
		else
			F=~/.bash_exports
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

# cycle through different prompts (different PS1 variables)
# TODO
dp() {
	numprompts=3
	if [ $# -ne 1 ] ; then
		echo "dp: err: incorrect number of arguments"
	elif [ $1 -gt $numprompts ] ; then
		echo "dp: err: prompt index out of bounds, attempted to select prompt $1 of only $numprompts total"
	else
		#PS1=...
		return
	fi
}

# show most commonly used commands
common() {
	if [ $# -eq 0 ] ; then
		num="10"
	else
		num=$1
	fi
	CMD="-n$num"
	history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head $CMD
}

# kill process by name
kp() {
	if [ $# -ne 1 ] ; then
		echo "kp: err: incorrect number of arguments"
	else
		ps aux | grep $1 > /dev/null
		mypid=$(pidof $1)
		if [ "$mypid" != "" ] ; then
			kill -9 $(pidof $1)
			if [[ "$?" == "0" ]] ; then
				echo "PID $mypid ($1) killed"
			fi
		else
			echo "kp: err: no processes killed, could not find PID for process $1"
		fi
	fi
}

# add to PATH variable
pathadd() {
	if [ $# -eq 0 ] ; then
		echo "pathadd: err: incorrect number of arguments"
	fi
	newelement=${1%/}
	if [ -d "$1" ] && ! echo $PATH | grep -E -q "(^|:)$newelement($|:)" ; then
		if [ "$2" == "after" ] ; then
			PATH="$PATH:$newelement"
		else
			PATH="$newelement:$PATH"
		fi
	fi
}

# remove from PATH variable
pathrm() {
	PATH="$(echo $PATH | sed -e "s;\(^\|:\)${1%/}\(:\|\$\);\1\2;g" -e 's;^:\|:$;;g' -e 's;::;:;g')"
}

# remove duplicates from PATH variable (deduplicate)
pathdedup() {
	PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"
}

# move most recently downloaded item(s) to the current directory (only works on MacOS)
snag() {
	if [ $# -eq 0 ] ; then
		num=1
	else
		num=$1
	fi
	files="$(ls -t ~/Downloads | head -$num)"
	for file in $files; do
		mv ~/Downloads/$file .
	done
}

# get the default branch for a git repo
gitdefault() {
	if [ $# -eq 1 ] ; then
		rem=1
	else
		rem="origin"
	fi
	git remote show $rem | grep "HEAD branch" | cut -d ":" -f 2
}

# remove all subdirectories from a directory
rmd() {
	if [ $# -eq 0 ] ; then
		rm -rf -- */
	elif [ $# -eq 1 ] ; then
		rm -rf -- $1/*/
	else
		echo "rmd: err: incorrect number of arguments"
	fi
}

# generate a random string of specified length, great for passwords
random() {
	if [ $# -eq 0 ] ; then
		num=30
	else
		num=$1
	fi
	strings /dev/urandom/ | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo
}

# make a shell script out of the last x commands
makes() {
	if [ $# -eq 0 ] ; then
		num=1
		name="script.sh"
	elif [ $# -eq 1 ] ; then
		num=$1
		name="script.sh"
	elif [ $# -eq 2 ] ; then
		num=$1
		name=$2
	else
		echo "makes: err: incorrect number of arguments"
	fi

	rando="$(strings /dev/urandom/ | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
	fc -rnl | head -$num > $rando
	tac $rando > $name
	rm -rf $rando
}

# make a BASH function out of the last x commands
makef() {
	if [ ! ~/.bash_functions ] ; then
		source=~/.bashrc
	else
		source=~/.bash_functions
	fi

	if [ $# -eq 0 ] ; then
		num=1
		rando="$(strings /dev/urandom/ | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
		name="function_$rando"
	elif [ $# -eq 1 ] ; then
		num=$1
		rando="$(strings /dev/urandom/ | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
		name="function_$rando"
	elif [ $# -eq 2 ] ; then
		num=$1
		name=$2
		rando="$(strings /dev/urandom/ | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
	else
		echo "makef: err: incorrect number of arguments"
	fi

	num="$(($num + 1))"

	printf "\n" >> $source
	printf "$name() {\n" >> $source
	fc -rnl | head -$num > $rando
	tac $rando > .tempfile

	index=0
	while IFS='' read -r CMD || [[ -n "$CMD" ]] ; do
		if [ $index -eq 0 ] ; then
			index+=1
			continue
		fi
		printf "$CMD\n" >> $source
	done < ".tempfile"

	printf "}\n" >> $source

	rm -rf .tempfile
	rm -rf $rando
	source ~/.bashrc
}

# remove a BASH Function by name
# TODO: need to account for other cases (i.e. `name () {`, `name (){`, `name(){`), only does `name() {` right now
removef() {
	if [ $# -ne 1 ] ; then
		echo "removef: err: incorrect number of arguments"
	else
		if [ ~/.bash_functions ] ; then
			source=~/.bash_functions
		else
			source=~/.bashrc
		fi

		rando="$(strings /dev/urandom/ | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
		title="$1() {"
		edit=0
		found=0
		count=0
		while IFS='' read -r line || [[ -n "$line" ]] ; do
			if [ "$title" == "$line" ] && [ $edit -eq 0 ] ; then
				edit=1
				found=1
			elif [ "$line" == "}" ] && [ $edit -eq 1 ] ; then
				edit=0
				count="$(($count + 1))"
			else
				if [ $edit -eq 0 ] ; then
					printf "%s\n" "$line" >> $rando
				fi
			fi
		done < "$source"

		cat $rando > $source
		rm -rf $rando
		if [ $found -eq 0 ] ; then
			echo "$1 not found in $source"
		else
			if [ $count -eq 1 ] ; then
				echo "Removed $1 from $source"
				source ~/.bashrc
			else
				echo "Removed $1 $count times from $source"
				source ~/.bashrc
			fi
		fi
	fi
}

# list all BASH functions
lsf() {
	if [ ~/.bash_functions ] ; then
		source=~/.bash_functions
	else
		source=~/.bashrc
	fi

	while IFS='' read -r line || [[ -n $line ]] ; do
		let="$(echo $line | fold -w1)"
		chars="$(echo $let | tr -d '\040\011\012\015')"

		if [[ ( "${chars[*]: -1}" == "{" ) && ( "${chars: -2:1}" == ")" && "${chars: -3:1}" == "(" ) ]] ; then
			len=${#chars}
			len="$(($len - 1))"
			echo "${chars:0:$len}"
		fi
	done < "$source"
}
















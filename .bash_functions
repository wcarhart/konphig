# .bash_functions
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
			let count=count+1
		done
		cd $cdstr
	else
		echo "up: err: argument must be a positive integer"
	fi
	pwd
}

# go back down one directory if we go up one too many
down() {
	from="$(pwd)"
	cd - >/dev/null
	to="$(pwd)"
	toarr=(${to//// })
	fromarr=(${from//// })

	for i in "${toarr[@]}"
	do
		if ! contains "$i" "${fromarr[@]}" ; then
			from="$from/$i"
			break
		fi
	done

	cd "$from"
	pwd
}

# checks to see if array ($2) contains a string ($1)
contains() {
	if [[ $# -le 2 ]] ; then
		echo "contains: err: incorrect number of arguments"
		return 1
	fi
	local e match="$1"
	shift
	for e; do [[ "$e" == "$match" ]] && return 0; done
	return 1
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
	strings /dev/urandom | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo
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

	rando="$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
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
		rando="$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
		name="function_$rando"
	elif [ $# -eq 1 ] ; then
		num=$1
		rando="$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
		name="function_$rando"
	elif [ $# -eq 2 ] ; then
		num=$1
		name=$2
		rando="$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
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

		rando="$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n $num | tr -d '\n'; echo)"
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

# function that does nothing (great for testing purposes)
dummy() {
	return
}

# search through command history
histg() {
	if [ $# -ne 1 ] ; then
		echo "histg: err: incorrect number of arguments"
	else
		history | grep $1
	fi
}

# intercept the `stderr` and `stdout` of a process
intercept() {
	if [ $# -ne 1 ] ; then
		echo "intercept: err: incorrect number of arguments"
	else
		strace -ff -e trace=write -e write=1,2 -p $1
	fi
}

# show number of unread emails in your Gmail inbox
gmail() {
	if [ $# -ne 1 ] ; then
		echo "gmail: err: incorrect number of arguments"
	else
		curl -u "$1" --silent "https://mail.google.com/mail/feed/atom" | sed -e 's/<\/fullcount.*/\n/' | sed -e 's/.*fullcount>//'
	fi
}

# show my current public IP address
publicip() {
	myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
	echo $myip
}

# get location for your public IP address
getlocation() {
	myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
	details="$(lynx -dump "$(publicip)".ip-adress.com | egrep 'City|State Code|Country Code')"
	frmt="IP: $myip\n"
	index=0
	while IFS= read -r line ; do
		if [ $index -eq 0 ] ; then
			city="$(echo $line | cut -d " " -f2-)"
			let index=index+1
		elif [ $index -eq 1 ] ; then
			country="$(echo $line | cut -d " " -f3-)"
			let index=index+1
		else
			state="$(echo $line | cut -d " " -f3-)"
			let index=index+1
		fi
	done <<< "$details"

	location="Location: $city, $state, $country"
	frmt+="$location"
	echo -e $frmt
}

# make it look like you're busy
busy() {
	cat /dev/urandom | hexdump -C | grep "ca fe"
}

# sort by size of current directory
sbs() {
	if [ $# -ne 0 ] ; then
		if [ $# -eq 1 ] ; then
			if [ -d $1 ] ; then
				cd $1
			else
				echo "sbs: err: $1 is not a valid directory"
			fi
		fi
	fi

	du -hs * | sort -h
	
	if [ $# -ne 0 ] ; then
		cd -
	fi
}

# make directory prefixed with the date
mkdate() {
	local dir="$(date +%F)-$1"
	mkdir $dir
}

# make directory prefixed with the date and change into it
mkcddate() {
	local dir="$(date +%F)-$1"
	mkdir $dir
	cd $dir
}

# sound the alarm
siren() {
	printf '\033[5m\033[91m%b\033[0m' '\'{127,105,105,40,127,117,117} && echo
}

# do you really need a description
rickroll() {
	string="$(printf '%b' '\'{116,145,166,145,162,040,147,157,156,156,141,040,147,151,166,145,040,171,157,165,040,165,160,056,056,056})"
	yes "$string"
}

# reverse input
rev() {
	if [ $# -eq 0 ] ; then
		__=""
		_stdin=""

		read -N1 -t1 __ && {
			(( $? <= 128 )) && {
				IFS= read -rd '' _stdin
				_stdin="$__$_stdin"
			}
		}

		val=$_stdin
		if [[ "$val" == "" ]] ; then
			echo "rev: err: no input found on stdin"
			return
		fi
	else
		if [ $# -ne 1 ] ; then
			echo "rev: err: incorrect number of arguments"
			return
		fi
		val=$1
	fi
	echo $val | sed $'s/./&\\\n/g' | sed -ne $'x;H;${x;s/\\n//g;p;}'
}

# detect os type
ostype() {
	os="$(uname -s)"
	case "${os}" in
		Linux*)		machine=Linux	;;
		Darwin*)	machine=Mac 	;;
		CYGWIN*)	machine=Cygwin  ;;
		MINGW*)		machine=MinGw 	;;
		*)			machine="UNKNOWN: ${unameOut}"
	esac
	echo "$machine"
}

# list all cows
lscows() {
	type cowsay >/dev/null 2>&1 || { echo -e >&2 "lscows: err: \`cowsay\` is required but not installed (use \`apt-get install cowsay\` or \`brew install cowsay\` to install)"; return; }
	cows="$(cowsay -l | tail -n +2 | tr ' ' '\n')"
	for cow in $cows; do cowsay -f $cow $cow; done
}

# random animal speech
randimal() {
	os="$(ostype)"

	if [[ "$1" == "--install" ]] ; then
		type cowsay >/dev/null 2>&1 || {
			if [[ "$os" == "Linux" ]] ; then
				apt-get install cowsay
			else
				brew install cowsay
			fi
		}
		type fortune >/dev/null 2>&1 || {
			if [[ "$os" == "Linux" ]] ; then
				apt-get install fortune
			else
				brew install fortune
			fi
		}
		type lolcat >/dev/null 2>&1 || {
			if [[ "$os" == "Linux" ]] ; then
				apt-get install lolcat
			else
				brew install lolcat
			fi
		}
		return
	fi

	type cowsay >/dev/null 2>&1 || { echo -e >&2 "randimal: err: \`cowsay\` is required but not installed (use \`apt-get install cowsay\` or \`brew install cowsay\` to install)"; return; }
	type fortune >/dev/null 2>&1 || { echo -e >&2 "randimal: err: \`fortune\` is required but not installed (use \`apt-get install fortune\` or \`brew install fortune\` to install)"; return; }
	type lolcat >/dev/null 2>&1 || { echo -e >&2 "randimal: err: \`lolcat\` is required but not installed (use \`apt-get install lolcat\` or \`brew install lolcat\` to install)"; return; }

	if [[ "$os" == "Linux" ]] ; then
		type shuf >/dev/null 2>&1 || { echo -e >&2 "randimal: err: \`shuf\` is required but not installed (use \`apt-get install shuf\` install)"; return; }
		if [ $# -eq 0 ] ; then
			fortune | cowsay -f `cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n 1` | lolcat
		else
			echo $1 | cowsay -f `cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n 1` | lolcat
		fi
	else
		type gshuf >/dev/null 2>&1 || { echo -e >&2 "randimal: err: \`shuf\` is required but not installed (use \`brew install shuf\` install)"; return; }
		if [ $# -eq 0 ] ; then
			fortune | cowsay -f `cowsay -l | tail -n +2 | tr ' ' '\n' | gshuf -n 1` | lolcat
		else
			echo $1 | cowsay -f `cowsay -l | tail -n +2 | tr ' ' '\n' | gshuf -n 1` | lolcat
		fi
	fi
}

# list what kinds of files are in a directory
what() {
	if [ $# -eq 0 ] ; then
		dir="."
	else
		dir="$1"
	fi
	find $dir -type f | perl -ne 'print "." . $1 if m/\.([^.\/]+)$/'
}

# show percentage of each filetype in directory and its subdirectories
per() {
	if [ $# -eq 0 ] ; then
		dir="."
	else
		dir="$1"
	fi
	stats="$(find $dir -type f | sed 's/.*\.//' | sort | uniq -c)"

	total=0
	index=0
	for stat in $stats; do
		if (( $index % 2 == 0 )) ; then
			total="$(($total + $stat))"
		fi
		index="$(($index + 1))"
	done

	index=0
	num=0
	word=0
	out=""
	for stat in $stats; do
		if [ $index -eq 0 ] ; then
			num="$stat"
			word=$stat
		else
			word="$word $stat"
		fi
		index="$(($index + 1))"
		if (( $index % 2 == 0 )) ; then
			per="$(echo "scale=10; $num/$total" | bc)"
			per="$(echo "scale=10; $per * 100" | bc)"
			per="$(echo "scale=2; $per/1" | bc)"
			out="$out\n$word ($per%)"
			index=0
			word=""
		fi
	done

	echo -e $out | column -t
}

# list all files of specific type
show() {
	if [ $# -eq 0 ] ; then
		echo "show: err: incorrect number of arguments"
	elif [ $# -eq 1 ] ; then
		find . -type f -name "*.$1"
	else
		while [ $# -ne 0 ] ; do
			printf "\033[94m.$1 files:\033[0m\n"
			find . -type f -name "*.$1"
			shift
		done
	fi
}

# get disk usage in a nicer format
dup() {
	if [ $# -ne 0 ] ; then
		if [[ -d $1 ]] ; then
			cd "$1"
		else
			echo "dup: err: $1 is not a valid directory"
			return
		fi
	fi

	du -sh --apparent-size *
	DU="$(du -sh --apparent-size .)"
	read -ra ARR <<<"$DU"
	echo " TOTAL: ${ARR[0]}"

	if [[ $# -ne 0 ]] ; then
		cd - > /dev/null
	fi
}

# get disk usage for specific filetype
duf() {
	if [ $# -eq 0 ] ; then
		echo "duf: err: incorrect number of arguments"
	else
		for arg in "$@"; do
			size="$(find . -name "*.$1" -print0 | xargs -0 du --apparent-size -ch | tail -n1)"
			read -ra ARR <<<"$SIZE"
			echo "$1: ${ARR[0] - $1}"
			shift
		done
	fi
}

# clear a file
clear() {
	if [ $# -eq 0 ] ; then
		command clear
	else
		for file in "$@"; do
			> "$file"
		done
	fi
}

# select files at random from a directory
get() {
	if [ $# -eq 0 ] ; then
		num=1
	else
		num=$1
	fi
	ls -p | grep -v / | sort -R | tail -$num | while read file; do
		echo $file
	done
}

# remove files at random
del() {
	if [ $# -eq 0 ] ; then
		num=1
	else
		num=$1
	fi
	ls -p | grep -v / | sort -R | tail -$num | while read file; do
		rm -rf $file
	done
}

# grep line by line
lbl() {
	if [ $# -ne 2 ] ; then
		echo "lbl: err: incorrect number of arguments"
	else
		while IFS= read -r result; do
			echo $result
			read </dev/tty
		done < <(grep "$1" $2)
	fi
}

# pause execution
pause() {
	read -n 0 -rsp $'Press any key to continue...\n'
}

# reset Macbook Pro touch bar
resetbar() {
	pkill "Touch Bar agent"
	killall "ControlStrip"
}

# make a new git repo
mkgit() {
	if [ $# -ne 1 ] ; then
		echo "mkgit: err: incorrect number of arguments"
	else
		mkdir "$1"
		cd "$1"
		git init
	fi
}

# copy current directory to clipboard
cppwd() {
	d="$(pwd)"
	pbcopy <<< "$d"
}

# copy previous command to clipboard
cplast() {
	fc -rnl | head -1 > tempfile
	com="$(tac tempfile)"
	rm -rf tempfile
	pbcopy <<< "$com"
}

# git clone and cd into new directory
clonecd() {
	git clone "$1" && cd "$(basename "$1")"
}

# create new remote repository on GitHub and push the current commit to it
rcreate() {
	if [ $# -eq 1 ] ; then
		REPO="$1"
	else
		REPO=${PWD##*/}
	fi

	GITHUBUSER=$(git config github.user)

	curl -u ${USER:-${GITHUBUSER}} https://api.github.com/user/repos -d "{\"name\": \"${REPONAME:-${REPO}}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}" > /dev/null
	git remote add origin git@github.com:${USER:-${GITHUBUSER}}/${REPONAME:-${REPO}}.git
	git push --set-upstream origin master
}

# execute a python file and open it in sublime
eao() {
	if [ $# -eq 0 ] ; then
		echo "eao: err: incorrect number of arguments"
		return
	fi
	(subl "$1" &); echo "$@" | xargs python3
}

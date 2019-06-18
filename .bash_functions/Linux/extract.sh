#!/bin/bash

# extracts compressed and zipped files automatically
extract() {
	if [[ -f "$1" ]] ; then
		case "$1" in
			*.tar.bz2)		tar xjf "$1"		;;
			*.tar.gz)		tar xzf "$1"		;;
			*.bz2)			bunzip2 "$1"		;;
			*.rar)			unrar x "$1"		;;
			*.gz)			gunzip "$1"			;;
			*.tar)			tar xf "$1"			;;
			*.xz)			tar xJf "$1"		;;
			*.tbz2)			tar xjf "$1"		;;
			*.tgz)			tar xzf "$1"		;;
			*.zip)			unzip "$1"			;;
			*.Z)			uncompress "$1"		;;
			*)				echo "extract: err: '$1' cannot be extracted via extract" ; return 1;;
		esac
	else
		echo "extract: err: $1 is not a valid file"
		return 1
	fi
}

#!/bin/bash

# cycle through different prompts (different PS1 variables)
dp() {
	if [[ $# -eq 0 ]] ; then
		# default
		export __PS1__=''
    elif [[ "$1" == "-h" || "$1" == "--help" ]] ; then
        # help menu
        echo "dp ~ change to a different prompt"
        echo
        echo "Usage: "
        echo "  dp [-h] NUM"
        echo
        echo "Available prompts:"
        echo "  default: full prompt with face"
        echo "  1: minimalist"
        echo "  2: date only"
        echo "  3: date and pwd"
        echo "  4: mood based on last command"
        echo "  5: date and git prompt"
	elif [[ "$1" == "1" ]] ; then
		# minimalist
		export __PS1__="\\$ "
	elif [[ "$1" == "2" ]] ; then
		# just date
		export __PS1__="[\A] > "
	elif [[ "$1" == "3" ]] ; then
		# full date and pwd
		export __PS1__="[\u@\h] \d, \T <\W> \\$ "
	elif [[ "$1" == "4" ]] ; then
		# mood based on last command
		export __PS1__="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\` \\$ "
    elif [[ "$1" == "5" ]] ; then
        # nice git prompt
        RED='\[\033[0;31m\]'
        GREEN='\[\033[0;32m\]'
        RESET='\[\033[0m\]'
        if test $(git status 2> /dev/null | grep -c :) -eq 0 ; then
            git_color="${GREEN}"
        else
            git_color="${RED}"
        fi
        export __PS1__="${RESET}[\A] \W${git_color}$(__git_ps1) ${RESET}> "
	else
		echo "dp: err: invalid prompt index, must be [1,4]"
		return 1
	fi
}

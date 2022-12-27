#!/bin/bash

# set up git tab completion
source ~/.git-prompt.sh
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# configure PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/opt/X11/bin"
if [[ "$(uname -s)" == *Darwin* ]] ; then
    export PATH="/Users/$(whoami)/bin:/Users/$(whoami):$PATH"
fi

# configure customizable PS1
export __PS1__=''

prompt_function() {
    local         blue='\[\033[0;34m\]'
    local          red='\[\033[0;31m\]'
    local    light_red='\[\033[1;31m\]'
    local        green='\[\033[0;32m\]'
    local  light_green='\[\033[1;32m\]'
    local       yellow='\[\033[0;33m\]'
    local        white='\[\033[1;37m\]'
    local   light_gray='\[\033[0;37m\]'
    local         gray='\[\033[1;30m\]'
    local        reset='\[\033[0m\]'
    local  title_start='\[\033]0;'
    local    title_end='\007\]'
  
    if test $(git status 2> /dev/null | grep -c :) -eq 0 ; then
        git_color="${green}"
    else
        git_color="${red}"
    fi

    local faces rand face
    if [[ "$__PS1__" == "" ]] ; then
        faces=( "༼つ•_•༽つ" "ʕっ•ᴥ•ʔっ" "ฅ^•ﻌ•^ฅ" )
        rand=$[$RANDOM % ${#faces[@]}]
        face="${faces[$rand]}"
        PS1="${reset}[\A]${git_color}$(__git_ps1) ${reset}\W \[\e[0;35m\]$face \[\e[0m\]"
    else
        PS1="$__PS1__"
    fi
}

export PROMPT_COMMAND='prompt_function'

# configure history traversing for interactive shells
if [[ $- == *i* ]] ; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
    bind "set completion-ignore-case on"
    bind "set show-all-if-ambiguous on"
fi

# configure subl terminus
if [[ "$TERM_PROGRAM" == "Terminus-Sublime" ]] ; then
    bind '"\e[1;3C": forward-word'
    bind '"\e[1;3D": backward-word'
fi

# show all files when tab completion is ambiguous
set show-all-if-ambiguous on

# make tab completion case insensitive
set completion-ignore-case on

# append to history instead of overwriting
shopt -s histappend

# check window size after each command and update $LINES and $COLUMNS
shopt -s checkwinsize

# configure NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# configure Homebrew (set PATH, MANPATH, etc.) on macOS
if [[ "$(uname -s)" == "Darwin" ]] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# source konphig functions
if [[ -d ~/.konphig/functions ]] ; then
    shopt -s nullglob
    for f in ~/.konphig/functions/* ; do
        source "$f"
    done
    shopt -u nullglob
fi

# source konphig aliases
if [[ -f ~/.bash_aliases ]] ; then
  source ~/.bash_aliases
fi

# source konphig variables
if [[ -f ~/.bash_variables ]] ; then
  source ~/.bash_variables
fi

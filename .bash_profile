# .bash_profile

## load bashrc
source ~/.bashrc
source ~/.git-prompt.sh

## GIT
prompt_function() {
    local         BLUE='\[\033[0;34m\]'
    local          RED='\[\033[0;31m\]'
    local    LIGHT_RED='\[\033[1;31m\]'
    local        GREEN='\[\033[0;32m\]'
    local  LIGHT_GREEN='\[\033[1;32m\]'
    local       YELLOW='\[\033[0;33m\]'
    local        WHITE='\[\033[1;37m\]'
    local   LIGHT_GRAY='\[\033[0;37m\]'
    local         GRAY='\[\033[1;30m\]'
    local        RESET='\[\033[0m\]'
    local  TITLE_START='\[\033]0;'
    local    TITLE_END='\007\]'
  
    if test $(git status 2> /dev/null | grep -c :) -eq 0 ; then
        git_color="${GREEN}"
    else
        git_color="${RED}"
    fi

    #PS1="${RESET}\u@\h: \w${git_color}$(__git_ps1)${RESET}\$ "

    #PS1="${RESET}\u@\h:${git_color}$(__git_ps1)${RESET} \w\$ "
  
    PS1="${RESET}\u@\h:${git_color}$(__git_ps1)${RESET} \W \$ "
}

## history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
set show-all-if-ambiguous on
set completion-ignore-case on
set SSH_ASKPASS

# .bashrc

# GIT
source ~/.git-prompt.sh
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export __PS1__=''

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

    if [[ "$__PS1__" == "" ]] ; then
        FACES=( "༼ つ ◕_◕ ༽つ" "ʕっ•ᴥ•ʔっ" "༼つ ் ▽  ் ༽つ" )
        RAND=$[$RANDOM % ${#FACES[@]}]
        FACE="${FACES[$RAND]}"
        PS1="${RESET}[\A]${git_color}$(__git_ps1) ${RESET}\W \[\e[0;35m\]$FACE \[\e[0m\]"
    else
        PS1="$__PS1__"
    fi
}

export PROMPT_COMMAND='prompt_function'

# detect os type
ostype() {
    OS=`uname -s`
    case "${OS}" in
        Linux*)     MACHINE=Linux   ;;
        Darwin*)    MACHINE=Mac     ;;
        CYGWIN*)    MACHINE=Cygwin  ;;
        MINGW*)     MACHINE=MinGw   ;;
        *)          MACHINE="UNKNOWN"
    esac
    echo "$MACHINE"
}

## history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
set show-all-if-ambiguous on
set completion-ignore-case on
set SSH_ASKPASS

# user specific aliases and functions
for FILE in /root/functions/* ; do
    source $FILE
done
if [ -f ~/.bash_functions ] ; then
  source ~/.bash_functions
fi
if [ -f ~/.bash_aliases ] ; then
  source ~/.bash_aliases
fi
if [ -f ~/.bash_variables ] ; then
  source ~/.bash_variables
fi

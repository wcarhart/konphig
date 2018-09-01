# .bash_aliases

# tools
alias vim='vim -S ~/.vimrc'
alias slq='mysql'

# system
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias la='ls -al --color=auto'
alias l='ls --color=auto'
#alias ls='ls --color=auto'

# typos and shortcuts
alias pytho='python'
alias pythoon='python'
alias ptyhon='python'
alias p='python'
alias gti='git'

# custom (from adda)
alias cpp='rsync --progress'
alias sb='source ~/.bashrc'
alias calc='python -ic "from __future__ import division; from math import *"'
alias hs='history | grep'
alias chx='chmod 755'
alias chr='chmod 644'
alias gz='gzip'
alias gzz='gzip *.gz'
alias gzzr='gzip -r .'
alias gzd='gzip -d *.gz'
alias gzdr='gzip -dr .'
alias bz='bzip2'
alias bzz='bzip2 *.bz2'
alias bzzr='find . -type f -not -name \*.bz2 -exec bzip2 \{\} \;'
alias bzd='bzip2 -d *.bz2'
alias bzdr='find . -type f -name \*.bz2 -exec bzip2 -d \{\} \;'
alias spin='while :;do for s in / - \\ \|; do printf "\r$s";sleep .1;done;done'
#alias clr='rm -rf *' # dangerous!
alias gitr="git submodule foreach git pull origin master"
alias c='clear'
alias cmount='mount | column -t'
alias meminfo='free -mlt'
alias volume="amixer get Master | sed '1,4 d' | cut -d [ -f 2 | cut -d ] -f 1"
alias listen='lsof -Pin'
alias websiteget='wget --random-wait -rpe robots=off -U mozilla'
alias ipinfo='curl ifconfig.me && curl ifconfig.me/host'
alias dlogin='docker login'
alias starwars='telnet towel.blinkenlights.nl'
alias tre='tree'
alias eit=exit
alias upls='up && ls'
alias cores='sysctl -n hw.ncpu'

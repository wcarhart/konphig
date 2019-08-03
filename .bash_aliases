# .bash_aliases

# tools
alias vim='vim -S ~/.vimrc'
alias slq='mysql'

# system
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias la='ls -alG'
alias l='ls -G'
alias mkdir='mkdir -p'

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
alias gitr="git submodule foreach git pull origin master"
alias c='clear'
alias cmount='mount | column -t'
alias dlogin='docker login'
alias starwars='telnet towel.blinkenlights.nl'
alias tre='tree'
alias eit=exit
alias upls='up && ls'
alias p3='python3'
alias cdk='cd ~/Konphig'
alias dirs='dirs -v'
alias django='python3 manage.py'

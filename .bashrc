# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# user specific aliases and functions
bind 'set completion-ignore-case on'
source ~/.bash_functions
source ~/.bash_aliases
source ~/.bash_exports

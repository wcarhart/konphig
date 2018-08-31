# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# user specific aliases and functions
bind 'set completion-ignore-case on'
if [ -f ~/.bash_functions ] ; then
  source ~/.bash_functions
fi
if [ -f ~/.bash_aliases ] ; then
  source ~/.bash_aliases
fi
if [ -f ~/.bash_exports ] ; then
  source ~/.bash_exports
fi

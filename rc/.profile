# .profile

# load .bashrc
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# set up linux brew
if [[ -d "/home/linuxbrew/.linuxbrew" ]] ; then
	eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

# update system settings to match changes in Konphig repo
update() {
	# acquire OS type
	OS=`ostype`
	if [[ "$OS" == "MacOS" ]] ; then
		CMD="MD5 -q"
	elif [[ "$OS" == "Linux" ]] ; then
		CMD="md5sum"
	else
		echo "update: err: only Linux operating systems and MacOS are supported"
		return 1
	fi

	# guarantee existence of source files
	if [[ ! -d ~/Konphig ]] ; then
		echo "update: err: no such directory ~/Konphig"
		return 1
	fi

	# update source files
	VAL=0
	if [[ `$CMD ~/Konphig/.bash_aliases)` != `$CMD ~/.bash_aliases` ]] ; then
		echo "Updating .bash_aliases"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_aliases ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.bash_variables` != `$CMD ~/.bash_variables` ]] ; then
		echo "Updating .bash_variables"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_variables ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.bash_profile` != `$CMD ~/.bash_profile` ]] ; then
		echo "Updating .bash_profile"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_profile ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.bashrc` != `$CMD ~/.bashrc` ]] ; then
		echo "Updating .bashrc"
		VAL=1
		yes | cp -rf ~/Konphig/.bashrc ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.git-prompt.sh` != `$CMD ~/.git-prompt.sh` ]] ; then
		echo "Updating .git-prompt.sh"
		VAL=1
		yes | cp -rf ~/Konphig/.git-prompt.sh ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.gitconfig` != `$CMD ~/.gitconfig` ]] ; then
		echo "Updating .gitconfig"
		VAL=1
		yes | cp -rf ~/Konphig/.gitconfig ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.profile` != `$CMD ~/.profile` ]] ; then
		echo "Updating .profile"
		VAL=1
		yes | cp -rf ~/Konphig/.profile ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.tmux.conf` != `$CMD ~/.tmux.conf` ]] ; then
		echo "Updating .tmux.conf"
		VAL=1
		yes | cp -rf ~/Konphig/.tmux.conf ~ >/dev/null 2>&1
	fi
	if [[ `$CMD ~/Konphig/.vimrc` != `$CMD ~/.vimrc` ]] ; then
		echo "Updating .vimrc"
		VAL=1
		yes | cp -rf ~/Konphig/.vimrc ~ >/dev/null 2>&1
	fi

	# update functions
	if [[ ! -d ~/.bash_functions ]] ; then
		mkdir -p ~/.bash_functions
	fi
	for FILE in ~/Konphig/.bash_functions/$OS/* ; do
		if [[ `$CMD $FILE` != "$($CMD ~/.bash_functions/`basename $FILE`)" ]] ; then
			SOURCE=`basename $FILE`
			echo "Updating function ${SOURCE: -2:2}"
			VAL=1
			yes | cp -rf $FILE ~/.bash_functions/ >/dev/null 2>&1
		fi
	done

	if [[ $VAL -eq 0 ]] ; then
		echo "Nothing to update"
	else
		source ~/.bashrc
	fi
}

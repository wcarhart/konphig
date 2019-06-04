# update system settings to match changes in Konphig repo
update() {
	# acquire OS type
	OS=`ostype`
	if [[ "$OS" == "MacOS" ]] ; then
		echo "update: err: currently using update.sh for MacOS and not Linux"
		echo "  To correct, ensure that Konphig is cloned in your home directory (~) and run:"
		echo "  cp ~/Konphig/.bash_functions/Linux/update.sh ~/.bash_functions/*"
		return 1
	fi
	if [[ "$OS" != "Linux" ]] ; then
		echo "update: err: only Linux operating systems and MacOS are supported"
		return 1
	fi

	# guarantee existence of source files
	if [[ ! -d ~/Konphig ]] ; then
		echo "update: err: no such directory ~/Konphig"
		return 1
	fi
	if [[ ! -d ~/Konphig/.bash_functions/$OS ]] ; then
		echo "update: err: no such directory ~/Konphig/.bash_functions/$OS"
		return 1
	fi

	# update source files
	VAL=0
	if [[ `md5sum ~/Konphig/.bash_aliases | awk '{print $1}'` != `md5sum ~/.bash_aliases | awk '{print $1}'` ]] ; then
		echo "Updating .bash_aliases"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_aliases ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.bash_variables | awk '{print $1}'` != `md5sum ~/.bash_variables | awk '{print $1}'` ]] ; then
		echo "Updating .bash_variables"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_variables ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.bash_profile | awk '{print $1}'` != `md5sum ~/.bash_profile | awk '{print $1}'` ]] ; then
		echo "Updating .bash_profile"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_profile ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.bashrc | awk '{print $1}'` != `md5sum ~/.bashrc | awk '{print $1}'` ]] ; then
		echo "Updating .bashrc"
		VAL=1
		yes | cp -rf ~/Konphig/.bashrc ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.git-prompt.sh | awk '{print $1}'` != `md5sum ~/.git-prompt.sh | awk '{print $1}'` ]] ; then
		echo "Updating .git-prompt.sh"
		VAL=1
		yes | cp -rf ~/Konphig/.git-prompt.sh ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.gitconfig | awk '{print $1}'` != `md5sum ~/.gitconfig | awk '{print $1}'` ]] ; then
		echo "Updating .gitconfig"
		VAL=1
		yes | cp -rf ~/Konphig/.gitconfig ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.profile | awk '{print $1}'` != `md5sum ~/.profile | awk '{print $1}'` ]] ; then
		echo "Updating .profile"
		VAL=1
		yes | cp -rf ~/Konphig/.profile ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.tmux.conf | awk '{print $1}'` != `md5sum ~/.tmux.conf | awk '{print $1}'` ]] ; then
		echo "Updating .tmux.conf"
		VAL=1
		yes | cp -rf ~/Konphig/.tmux.conf ~ >/dev/null 2>&1
	fi
	if [[ `md5sum ~/Konphig/.vimrc | awk '{print $1}'` != `md5sum ~/.vimrc | awk '{print $1}'` ]] ; then
		echo "Updating .vimrc"
		VAL=1
		yes | cp -rf ~/Konphig/.vimrc ~ >/dev/null 2>&1
	fi

	# update functions
	if [[ ! -d ~/.bash_functions ]] ; then
		mkdir -p ~/.bash_functions
	fi
	for FILE in ~/Konphig/.bash_functions/$OS/* ; do
		if [[ `md5sum $FILE | awk '{print $1}'` != "$(md5sum ~/.bash_functions/`basename $FILE`) | awk '{print $1}'" ]] ; then
			SOURCE=`basename $FILE`
			echo "Updating function ${SOURCE:0:-3}"
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

# update system settings to match changes in Konphig repo
update() {
	# acquire OS type
	OS=`ostype`
	if [[ "$OS" == "Linux" ]] ; then
		echo "update: err: currently using update.sh for Linux and not MacOS"
		echo "  To correct, ensure that Konphig is cloned in your home directory (~) and run:"
		echo "  cp ~/Konphig/.bash_functions/Linux/update.sh ~/.bash_functions/*"
		return 1
	fi
	if [[ "$OS" != "MacOS" ]] ; then
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
	if [[ `md5 -q ~/Konphig/.bash_aliases` != `md5 -q ~/.bash_aliases` ]] ; then
		echo "Updating .bash_aliases"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_aliases ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.bash_variables` != `md5 -q ~/.bash_variables` ]] ; then
		echo "Updating .bash_variables"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_variables ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.bash_profile` != `md5 -q ~/.bash_profile` ]] ; then
		echo "Updating .bash_profile"
		VAL=1
		yes | cp -rf ~/Konphig/.bash_profile ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.bashrc` != `md5 -q ~/.bashrc` ]] ; then
		echo "Updating .bashrc"
		VAL=1
		yes | cp -rf ~/Konphig/.bashrc ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.git-prompt.sh` != `md5 -q ~/.git-prompt.sh ` ]] ; then
		echo "Updating .git-prompt.sh"
		VAL=1
		yes | cp -rf ~/Konphig/.git-prompt.sh ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.gitconfig` != `md5 -q ~/.gitconfig` ]] ; then
		echo "Updating .gitconfig"
		VAL=1
		yes | cp -rf ~/Konphig/.gitconfig ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.profile` != `md5 -q ~/.profile` ]] ; then
		echo "Updating .profile"
		VAL=1
		yes | cp -rf ~/Konphig/.profile ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.tmux.conf` != `md5 -q ~/.tmux.conf` ]] ; then
		echo "Updating .tmux.conf"
		VAL=1
		yes | cp -rf ~/Konphig/.tmux.conf ~ >/dev/null 2>&1
	fi
	if [[ `md5 -q ~/Konphig/.vimrc` != `md5 -q ~/.vimrc` ]] ; then
		echo "Updating .vimrc"
		VAL=1
		yes | cp -rf ~/Konphig/.vimrc ~ >/dev/null 2>&1
	fi

	# update functions
	if [[ ! -d ~/.bash_functions ]] ; then
		mkdir -p ~/.bash_functions
	fi
	for FILE in ~/Konphig/.bash_functions/$OS/*.sh ; do
		if [[ ! -f ~/.bash_functions/`basename $FILE` ]] ; then
			SOURCE=`basename $FILE`
			echo "Adding function ${SOURCE:0:$(( ${#SOURCE}-3 ))}"
			VAL=1
			yes | cp -rf $FILE ~/.bash_functions/ >/dev/null 2>&1
		elif [[ `md5 -q $FILE` != "$(md5 -q ~/.bash_functions/`basename $FILE`)" ]] ; then
			SOURCE=`basename $FILE`
			echo "Updating function ${SOURCE:0:$(( ${#SOURCE}-3 ))}"
			VAL=1
			yes | cp -rf $FILE ~/.bash_functions/ >/dev/null 2>&1
		fi
	done
	for FILE in ~/.bash_functions/*.sh ; do
		if [[ ! -f ~/Konphig/.bash_functions/$OS/`basename $FILE` ]] ; then
			SOURCE=`basename $FILE`
			echo "Removing function ${SOURCE:0:$(( ${#SOURCE}-3 ))} (function will still exist in this shell instance)"
			VAL=1
			rm -rf $FILE
		fi
	done

	if [[ $VAL -eq 0 ]] ; then
		echo "Nothing to update"
	else
		source ~/.bashrc
	fi
}

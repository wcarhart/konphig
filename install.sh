# detect os type
ostype() {
    OS=`uname -s`
    case "${OS}" in
        Linux*)     MACHINE=Linux   ;;
        Darwin*)    MACHINE=MacOS   ;;
        CYGWIN*)    MACHINE=Cygwin  ;;
        MINGW*)     MACHINE=MinGw   ;;
        *)          MACHINE=UNKNOWN ;;
    esac
    echo "$MACHINE"
}

# trap
function cleanup {
	if [[ -d ~/.originals ]] ; then
		for FILE in ~/.originals/* ; do
			yes | cp -rf $FILE ~ >/dev/null 2>&1
		done
		echo "Error: installation failed"
		exit 1
	else
		echo "Installation successful"
		exit 0
	fi
}

# validate inputes
OS=`ostype`
if [[ ! -d ~/Konphig ]] ; then
	echo "Error: missing directory ~/Konphig"
	return 1
fi
if [[ ! -d ~/Konphig/.bash_functions ]] ; then
	echo "Error: missing directory ~/Konphig/.bash_functions"
	return 1
fi
if [[ ! -d ~/Konphig/.bash_functions/$OS ]] ; then
	echo "Error: missing directory ~/Konphig/.bash_functions/$OS"
	return 1
fi

# create backup
mkdir ~/.originals
if [[ -f ~/.bashrc ]] ; then
	mv ~/.bashrc ~/.originals/
fi
if [[ -f ~/.bash_profile ]] ; then
	mv ~/.bash_profile ~/.originals/
fi
if [[ -f ~/.git-prompt.sh ]] ; then
	mv ~/.git-prompt.sh ~/.originals/
fi
if [[ -f ~/.gitconfig ]] ; then
	mv ~/.gitconfig ~/.originals/
fi
if [[ -f ~/.profile ]] ; then
	mv ~/.profile ~/.originals/
fi
if [[ -f ~/.tmux.conf ]] ; then
	mv ~/.tmux.conf ~/.originals/
fi
if [[ -f ~/.vimrc ]] ; then
	mv ~/.vimrc ~/.originals/
fi
if [[ -f ~/.pypirc ]] ; then
	mv ~/.pypirc ~/.originals/
fi
if [[ -f ~/gpg-agent.conf ]] ; then
	mv ~/gpg-agent.conf ~/.originals/
fi

# begin installation
yes | cp -rf ~/Konphig/.bash_aliases ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.bash_variables ~ >/dev/null 2>&1
mkdir -p ~/.bash_functions
for FILE in ~/Konphig/.bash_functions/$OS/* ; do
	yes | cp -rf $FILE ~/.bash_functions/ >/dev/null 2>&1
done
yes | cp -rf ~/Konphig/.bash_profile ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.bashrc ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.git-prompt.sh ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.gitconfig ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.profile ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.tmux.conf ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.vimrc ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/.pypirc ~ >/dev/null 2>&1
yes | cp -rf ~/Konphig/gpg-agent.conf ~ >/dev/null 2>&1

rm -rf ~/.originals

trap cleanup EXIT
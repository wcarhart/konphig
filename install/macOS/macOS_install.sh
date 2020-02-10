# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Upgrade brew
brew upgrade
brew tap homebrew/cask-versions

# Install CLI tools
brew install awscli
brew install bash
brew install bash-completion
brew install coreutils
brew install cowsay
brew install doctl
brew install dos2unix
brew install fish
brew install fortune
brew install git
brew install grip
brew install heroku
brew install hyper
brew install jq
brew install llvm
brew install lolcat
brew install lynx
brew install node
brew install pinentry-mac
brew install postgresql
brew install python3
brew install rabbitmq
brew install s3cmd
brew install shellcheck
brew install sqlite
brew install tmux
brew install tree
brew install vapor
brew install wine
brew install wget
brew install xz
brew install yarn

# Link commands
brew link --overwrite coreutils

# Install macOS apps
brew cask install brave-browser
brew cask install docker
brew cask install google-cloud-sdk
brew cask install hyper
brew cask install itsycal
brew cask install java
brew cask install slack
brew cask install spotify
brew cask install sublime-text
brew cask install zoomus

# Remove outdated versions from the cellar
brew cleanup

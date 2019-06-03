# git clone and cd into new directory
clonecd() {
	git clone "$1" && cd `basename "${1%.git}"`
}

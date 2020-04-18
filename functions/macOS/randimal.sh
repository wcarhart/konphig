#!/bin/bash

# random animal speech
randimal() {
	if [[ $# -eq 0 ]] ; then
		fortune | cowsay -f `cowsay -l | tail -n +2 | tr ' ' '\n' | gshuf -n 1` | lolcat
	else
		echo "$1" | cowsay -f `cowsay -l | tail -n +2 | tr ' ' '\n' | gshuf -n 1` | lolcat
	fi
}

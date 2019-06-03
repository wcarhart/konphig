# sound the alarm
siren() {
	printf '\033[5m\033[91m%b\033[0m' '\'{127,105,105,40,127,117,117} && echo
}

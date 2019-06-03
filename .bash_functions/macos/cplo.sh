# copy output from previous command to Mac clipboard (CoPy Last command Output)
cplo() {
	pbcopy <<< "`!!`"
}

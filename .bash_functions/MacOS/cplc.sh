# copy previous command to Mac clipboard (CoPy Last Command)
cplc() {
	RAW=`history | tail -2 | head -1`
	CMD=( $RAW )
	echo -n "${CMD[@]:1}" | pbcopy
}

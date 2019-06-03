# make a BASH function out of the last x commands
makef() {
	fc -rnl > /dev/null 2>&1
	if [[ $? -ne 0 ]] ; then 
		echo "makef: err: history is empty"
		return 1
	fi

	if [[ $# -eq 0 ]] ; then
		NUM=1
		RANDO=`random 5`
		NAME="function_$RANDO"
	elif [[ $# -eq 1 ]] ; then
		NUM=$1
		RANDO=`random 5`
		NAME="function_$RANDO"
	elif [[ $# -eq 2 ]] ; then
		NUM=$1
		NAME=$2
		RANDO=`random 5`
	else
		echo "makef: err: incorrect number of arguments"
		return 1
	fi

	[ -n "$NUM" ] && [ "$NUM" -eq "$NUM" ] 2>/dev/null
	if [ $? -ne 0 ]; then
		echo "makef: err: first argument must be a number"
		return 1
	fi
	if [[ $NUM -lt 1 ]] ; then
		echo "makef: err: first argument must be a positive integer"
		return 1
	fi

	NAMESTR=( $NAME )
	if [[ ${#NAMESTR[@]} -gt 1 ]] ; then
		echo "makef: err: name of function cannot contain spaces"
		return 1
	fi

	if [[ ! -d ~/.bash_functions ]] ; then
		SOURCE=~/.bashrc
	else
		if [[ ! -f ~/.bash_functions/$NAME.sh ]] ; then
			SOURCE=~/.bash_functions/$NAME.sh
		else
			echo "makef: err: ~/.bash_functions/$NAME.sh already exists"
			return 1
		fi
	fi

	NUM=$(( $NUM + 1 ))

	printf "\n" >> $SOURCE
	printf "$NAME() {\n" >> $SOURCE
	fc -rnl | head -$NUM > $RANDO
	tac $RANDO > .tempfile

	INDEX=0
	while IFS='' read -r CMD || [[ -n "$CMD" ]] ; do
		if [ $INDEX -eq 0 ] ; then
			INDEX+=1
			continue
		fi
		printf "$CMD\n" >> $SOURCE
	done < ".tempfile"

	printf "}\n" >> $SOURCE

	rm -rf .tempfile
	rm -rf $RANDO
	source $SOURCE
}

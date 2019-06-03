# list all custom BASH functions
lsf() {
	if [[ ! -d ~/.bash_functions ]] ; then
		if [[ ! -f ~/.bashrc ]] ; then
			echo "lsf: err: no such directory ~/.bash_functions, no such file ~/.bashrc"
		fi

		while IFS='' read -r LINE || [[ -n $LINE ]] ; do
			LET=`echo $LINE | fold -w1`
			CHARS=`echo $LET | tr -d '\040\011\012\015'`

			if [[ ( "${CHARS[*]: -1}" == "{" ) && ( "${CHARS: -2:1}" == ")" && "${CHARS: -3:1}" == "(" ) ]] ; then
				LEN=${#CHARS}
				LEN="$(( $LEN - 1 ))"
				echo "${CHARS:0:$LEN}"
			fi
		done < ~/.bashrc
	else
		for FILE in ~/.bash_functions/* ; do
			PARTS=( ${FILE//./ } )
			if [[ "${PARTS[-1]}" == "sh" ]] ; then
				echo "`basename ${FILE:0:${#FILE}-3}`()"
			fi
		done
	fi
}

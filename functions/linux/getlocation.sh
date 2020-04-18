#!/bin/bash

# get location for your public IP address
getlocation() {
	MYIP=`dig +short myip.opendns.com @resolver1.opendns.com`
	DETAILS=`lynx -dump "$(publicip)".ip-adress.com | egrep 'City|State Code|Country Code'`
	FRMT="IP: $MYIP\n"
	INDEX=0
	while IFS= read -r LINE ; do
		if [[ $INDEX -eq 0 ]] ; then
			CITY=`echo $LINE | cut -d " " -f2-`
			let INDEX=INDEX+1
		elif [[ $INDEX -eq 1 ]] ; then
			COUNTRY=`echo $LINE | cut -d " " -f3-`
			let INDEX=INDEX+1
		else
			STATE=`echo $LINE | cut -d " " -f3-`
			let INDEX=INDEX+1
		fi
	done <<< "$DETAILS"

	LOCATION="Location: $CITY, $STATE, $COUNTRY"
	FRMT+="$LOCATION"
	echo -e $FRMT
}

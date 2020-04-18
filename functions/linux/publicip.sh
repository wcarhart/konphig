#!/bin/bash

# show my current public IP address
publicip() {
	echo `dig +short myip.opendns.com @resolver1.opendns.com`
}

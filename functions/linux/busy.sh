#!/bin/bash

# make it look like you're busy
busy() {
	cat /dev/urandom | hexdump -C | grep "ca fe"
}

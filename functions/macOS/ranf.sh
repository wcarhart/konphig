#!/bin/bash

# add test files to directory
ranf() {
	touch test.txt
	for i in {0..50} ; do echo "test test test test" >> test.txt ; done
	for (( i=1; i<=${1:-100}; i++ )) ; do cat test.txt > test$i.txt ; done
	rm -rf "test.txt"
}

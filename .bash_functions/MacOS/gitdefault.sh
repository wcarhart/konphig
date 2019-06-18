#!/bin/bash

# get the default branch for a git repo
gitdefault() {
	git remote show "${1:-origin}" | grep "HEAD branch" | cut -d ":" -f 2
}

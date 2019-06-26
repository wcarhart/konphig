#!/bin/bash

# get the current git branch
gitb() {
  git status > /dev/null 2>&1
  if [[ $? -ne 0 ]] ; then
    echo "gitb: err: not a git repository"
    return 1
  fi
  git branch | grep \* | cut -d ' ' -f2
}

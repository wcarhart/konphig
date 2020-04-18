#!/bin/bash

# create new remote repository on GitHub and push the current commit to it
rcreate() {
	if [[ ! -d .git ]] ; then
		echo "rcreate: err: `basename $PWD` is not a git repository"
		return 1
	fi

	REMOTES=( `git remote` )
	if [[ "${#REMOTES[@]}" -ne 0 ]] ; then
		for REMOTE in "${REMOTES[@]}" ; do
			git remote remove "$REMOTE"
		done
	fi

	REPO="${1:-${PWD##*/}}"
	GITHUBUSER=${USER:-`git config github.user`}

	if [[ "$GITHUBUSER" == "" ]] ; then
		echo "rcreate: err: could not determine GitHub username"
		return 1
	fi

	git status 2> /dev/null | grep -c "No commits yet" > /dev/null 2>&1
	if [[ $? -eq 0 ]] ; then
		echo "rcreate: err: no commits yet"
		return 1
    fi

	curl -f -u ${USER:-${GITHUBUSER}} https://api.github.com/user/repos -d "{\"name\": \"${REPONAME:-${REPO}}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}" > /dev/null \
		|| { echo "rcreate: err: could not create repository $REPO for user $GITHUBUSER" ; return 1 ; }
	git remote add origin git@github.com:${GITHUBUSER}/${REPONAME:-${REPO}}.git
	git push --set-upstream origin master
}

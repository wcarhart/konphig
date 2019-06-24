# Konphig
Config files for safe keeping 😏

## Summary
Konphig contains custom settings for the following tools:
* Bash
* git
* tmux
* vim
* gpg
* PyPI

## Key Features
Read the full Bash functions documentation by [clicking here](https://github.com/wcarhart/Konphig/blob/master/functions.md).

**`up` and `down`** - move up and down the file tree
```
$ pwd
/dir0/dir1/dir2/dir3/dir4
$ up 4
/dir0
$ down 2
/dir0/dir1/dir2
```
**`adda`** - add a permanent alias on the fly
```
$ adda e echo
$ e "Hello, Konphig!"
Hello, Konphig!
```
**`makef`** - create a permanent bash function from commands in the history on the fly
```
$ clear
$ ls
file0.txt file1.txt
$ makef 2 cls
$ cat ~/.bashrc
cls() {
  clear
  ls
}
```
**`rcreate`** - create a remote in GitHub
```
$ git add -A
$ git commit -m "Initial commit"
$ basename `pwd`
cool_new_project
$ rcreate
Enter passphrase for key '/Users/username/.ssh/id_rsa': 
Counting objects: 1, done.
Writing objects: 100% (1/1), 8 bytes | 0 bytes/s, done.
Total 1 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/username/cool_new_project/pull/new/master
remote:
To https://github.com/username/cool_new_project.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
```
**`getlocation`** - get your current location (based on your public IP address)
```
$ getlocation
IP: 105.38.27.128
Location: San Francisco, CA, USA
```
**`duf`** - show disk usage by filetype
```
$ duf py md
py: 30K
md: 4.7K
```
**`gitcfb`** - copy a file from a different git branch to the current one
```
$ cat test.txt
I am a text file on the develop branch.
$ gitcfb master test.txt
$ cat test.txt
I am a text file on the master branch.
```
**`dp`** - change to a different prompt
```
$ dp 1
[11:57] ~ ༼ つ ◕_◕ ༽つ dp 2
[11:57] > dp 3
[wcarhart@willcarhart] Wed Jun 19, 11:57:23 <~> $ dp 4
^_^ $ command_that_fails
-bash: command_that_fails: command not found
O_O $ cd ~
^_^ $ dp 1
```

And many, many more! Read the full Bash functions documentation by [clicking here](https://github.com/wcarhart/Konphig/blob/master/functions.md).

## Install
This will install all of the configuration files from Konphig to your system. Konphig is currently supported for MacOS and most Linux-based environments. Use the following:
```bash
$ git clone https://github.com/wcarhart/Konphig.git
$ cd ~/Konphig
$ chmod +x install.sh
$ ./install.sh
$ source ~/.bashrc
```
You can also use `./install.sh -d` to install Konphig files and all necessary dependencies.

From now on, you can use `sb` instead of `source ~/.bashrc` to manually push updates to your system configurations.

In addition, if you ever make a change to any of your Konphig files, you can run [`update`](https://github.com/wcarhart/Konphig/blob/master/functions.md#update) to update your system files. `update` dynamically matches your system files to your Konphig files and sources them for you automatically.

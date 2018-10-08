# BASH Functions
This is the general documentation for the `BASH` functions written in `.bash_functions`.

### Contents
| [File Manipulation](https://github.com/wcarhart/Konphig/blob/master/functions.md#file-manipulation) | [Statistics & Tools](https://github.com/wcarhart/Konphig/blob/master/functions.md#statistics--tools) | [Environment](https://github.com/wcarhart/Konphig/blob/master/functions.md#environment) | [Miscellaneous](https://github.com/wcarhart/Konphig/blob/master/functions.md#miscellaneous) | [Useless](https://github.com/wcarhart/Konphig/blob/master/functions.md#useless) |
|:-----------------:|:------------------:|:-------------:|:---------------:|:------------:|
| [extract](https://github.com/wcarhart/Konphig/blob/master/functions.md#extract) | [md5c](https://github.com/wcarhart/Konphig/blob/master/functions.md#md5c) | [adda](https://github.com/wcarhart/Konphig/blob/master/functions.md#adda) | [fixlines](https://github.com/wcarhart/Konphig/blob/master/functions.md#fixlines) | [dummy](https://github.com/wcarhart/Konphig/blob/master/functions.md#dummy)
| [grab](https://github.com/wcarhart/Konphig/blob/master/functions.md#grab) | [cf](https://github.com/wcarhart/Konphig/blob/master/functions.md#cf) | [addv](https://github.com/wcarhart/Konphig/blob/master/functions.md#addv) | [gitdefault](https://github.com/wcarhart/Konphig/blob/master/functions.md#gitdefault) | [busy](https://github.com/wcarhart/Konphig/blob/master/functions.md#busy)
| [ranf](https://github.com/wcarhart/Konphig/blob/master/functions.md#ranf) | [up](https://github.com/wcarhart/Konphig/blob/master/functions.md#up) | [dp](https://github.com/wcarhart/Konphig/blob/master/functions.md#dp) | [random](https://github.com/wcarhart/Konphig/blob/master/functions.md#random) | [siren](https://github.com/wcarhart/Konphig/blob/master/functions.md#siren)
| [rmr](https://github.com/wcarhart/Konphig/blob/master/functions.md#rmr) | [down](https://github.com/wcarhart/Konphig/blob/master/functions.md#down) | [pathadd](https://github.com/wcarhart/Konphig/blob/master/functions.md#pathadd) | [makes](https://github.com/wcarhart/Konphig/blob/master/functions.md#makes) | [rickroll](https://github.com/wcarhart/Konphig/blob/master/functions.md#rickroll)
| [mvcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#mvcd) | [common](https://github.com/wcarhart/Konphig/blob/master/functions.md#common) | [pathrm](https://github.com/wcarhart/Konphig/blob/master/functions.md#pathrm) | [makef](https://github.com/wcarhart/Konphig/blob/master/functions.md#makef) | [lscows](https://github.com/wcarhart/Konphig/blob/master/functions.md#lscows)
| [mvrm](https://github.com/wcarhart/Konphig/blob/master/functions.md#mvrm) | [snag](https://github.com/wcarhart/Konphig/blob/master/functions.md#snag) | [pathdedup](https://github.com/wcarhart/Konphig/blob/master/functions.md#pathdedup) | [removef](https://github.com/wcarhart/Konphig/blob/master/functions.md#removef) | [randimal](https://github.com/wcarhart/Konphig/blob/master/functions.md#randimal)
| [cpcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#cpcd) | [histg](https://github.com/wcarhart/Konphig/blob/master/functions.md#histg) | [ostype](ostype) | [lsf](https://github.com/wcarhart/Konphig/blob/master/functions.md#lsf)
| [cppcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#cppcd) | [intercept](https://github.com/wcarhart/Konphig/blob/master/functions.md#intercept) | [kp](https://github.com/wcarhart/Konphig/blob/master/functions.md#kp) | [gmail](https://github.com/wcarhart/Konphig/blob/master/functions.md#gmail)
| [mkcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcd) | [sbs](https://github.com/wcarhart/Konphig/blob/master/functions.md#sbs) | [psgrep](https://github.com/wcarhart/Konphig/blob/master/functions.md#psgrep) | [publicip](https://github.com/wcarhart/Konphig/blob/master/functions.md#publicip)
| [mkmv](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkmv) | [cdls](https://github.com/wcarhart/Konphig/blob/master/functions.md#cdls) | [mkgit](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkgit) | [getlocation](https://github.com/wcarhart/Konphig/blob/master/functions.md#getlocation)
| [mkmvcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkmvcd) | [rev](https://github.com/wcarhart/Konphig/blob/master/functions.md#rev)| [cppwd](https://github.com/wcarhart/Konphig/blob/master/functions.md#cppwd) | [pause](https://github.com/wcarhart/Konphig/blob/master/functions.md#pause)
| [mkcp](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcp) | [what](https://github.com/wcarhart/Konphig/blob/master/functions.md#what) | [cplast](https://github.com/wcarhart/Konphig/blob/master/functions.md#cplast) | [resetbar](https://github.com/wcarhart/Konphig/blob/master/functions.md#resetbar)
| [mkcpcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcpcd) | [per](https://github.com/wcarhart/Konphig/blob/master/functions.md#per)
| [rmd](https://github.com/wcarhart/Konphig/blob/master/functions.md#rmd) | [show](https://github.com/wcarhart/Konphig/blob/master/functions.md#show)
| [mkdate](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkdate) | [dup](https://github.com/wcarhart/Konphig/blob/master/functions.md#dup)
| [mkcddate](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcddate) | [duf](https://github.com/wcarhart/Konphig/blob/master/functions.md#duf)
| [clear](https://github.com/wcarhart/Konphig/blob/master/functions.md#clear) | [get](https://github.com/wcarhart/Konphig/blob/master/functions.md#get)
| [del](https://github.com/wcarhart/Konphig/blob/master/functions.md#del) | [lbl](https://github.com/wcarhart/Konphig/blob/master/functions.md#lbl)
| [clonecd](https://github.com/wcarhart/Konphig/blob/master/functions.md#clonecd)


## File Manipulation
These functions deal with file manipulation, meaning the creation, modification, and deletion of files and directories.

#### extract
*extract* - extracts compressed and zipped files automatically

Usage: `extract file`
```
$ extract contents.bz2
```
Dependencies: `tar`, `bunzip`, `unrar`, `gunzip`, `unzip`, `uncompress`, `echo`

---
#### grab
*grab* - "grabs" a file and changes its owner to the current user (requires `sudo` access)

Usage: `grab file`
```
$ grab file_not_owned_by_me.txt
```
Dependencies: `chown`

---
#### ranf
*add random test files* - adds nonempty text files to the current directory for testing purposes (default is 100 files)

Usage: `ranf [num_of_files]`
```
$ ranf       # adds default of 100 text files
$ ranf 10    # adds 10 text files
```
Dependencies: `echo`, `touch`, `cat`, `rm`

---
#### rmr
*remove recursively* - removes specific filetypes recursively (in the current directory and all subdirectories)

Usage: `rmr *.filetype`
```
$ rmr *.txt       # removes all .txt files recursively
$ rmr *.txt *.py  # removes all .txt and .py files recursively
```
Dependencies: `find`, `echo`

---
#### mvcd
*move files and change directory* - move files into a destination directory and then changes into the destination directory

Usage: `mvcd files destination`
```
$ mvcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ mvcd *.txt d                  # move all .txt files into d and change into d
```
Dependencies: `echo`, `mv`, `cd`

---
#### mvrm
*move files and remove directory* - move files from the current directory and delete the current directory and its remaining contents (*WARNING*: will forcefully remove source, even if nonempty directory (use case is with `*`))

Usage: `mvrm files destination`
```
$ mvrm *.java ..      # move all .java files to the parent directory (..) and delete the current directory (.)
```
Dependencies: `echo`, `mv`, `cd`, `rm`

---
#### cpcd
*copy files and change directory* - copies files into a destination directory and then changes into the destination directory

Usage: `cpcd files destination`
```
$ cpcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ cpcd *.txt d                  # move all .txt files into d and change into d
```
Dependencies: `echo`, `cp`, `cd`

---
#### cppcd
*copy files with a progress bar and change directory* - copies files into a destination directory while showing a progress bar and then changes into the destination directory

Usage: `cppcd files destination`
```
$ cppcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ cppcd *.txt d                  # move all .txt files into d and change into d
```
Dependencies: `rsync`, `echo`, `cd`

---
#### mkcd
*make directory and change directory* - make a new directory and change into it

Usage: `mkcd directory`
```
$ mkcd newdir     # make a new directory newdir and changes into it
```
Dependencies: `echo`, `mkdir`, `cd`

---
#### mkmv
*make directory and move files* - make a new directory and move files into it

Usage: `mkmv directory files`
```
$ mkmv newdir file0.py file1.py     # make a new directory newdir and move file0.py and file1.py into newdir
$ mkmv newdir *.swift               # make a new directory newdir and move all .swift files into newdir
```
Dependencies: `echo`, `mkdir`, `mv`, `shift`

---
#### mkmvcd
*make directory, move files, and change directory* - make a new directory, move files into it, and then change into it

Usage: `mkmvcd newdir files`
```
$ mkmvcd newdir file0.py file1.py     # make a new directory newdir, move file0.py and file1.py into newdir, and then change into newdir
$ mkmvcd newdir *.swift               # make a new directory newdir, move all .swift files into newdir, and then change into newdir
```
Dependencies: `echo`, `mkdir`, `mv`, `cd`, `shift`

---
#### mkcp
*make directory and copy files* - make a new directory and copy files into it

Usage: `mkcp directory files`
```
$ mkcp newdir file0.py file1.py     # make a new directory newdir and copy file0.py and file1.py into newdir
$ mkcp newdir *.swift               # make a new directory newdir and copy all .swift files into newdir
```
Dependencies: `echo`, `mkdir`, `cp`, `shift`

---
#### mkcpcd
*make directory, copy files, and change directory* - make a new directory, copy files into it, and then change into it

Usage: `mkcpcd newdir files`
```
$ mkcpcd newdir file0.py file1.py     # make a new directory newdir, copy file0.py and file1.py into newdir, and then change into newdir
$ mkcpcd newdir *.swift               # make a new directory newdir, copy all .swift files into newdir, and then change into newdir
```
Dependencies: `echo`, `mkdir`, `cp`, `cd`, shift`

---
#### rmd
*remove subdirectories* - remove all subdirectories of the current directory (*WARNING:* will forcefully remove nonempty subdirectories)

Usage: `rmd parent_directory`
```
$ rmd         # removes all directories in the current directory
$ rmd d/      # removes all subdirectories in d (i.e. d/dir0, d/dir1, ...)
```
Dependencies: `rm`, `echo`

---
#### mkdate
*make directory prefixed with the date* - make a new directory whose name is prefixed with the current date in YYYY-MM-DD format

Usage: `mkdate new_directory`
```
$ mkdate analysis       # will make a new directory named `YYYY-MM-DD-analysis`
```
Dependencies: `date`, `mkdir`

---
#### mkcddate
*make directory prefixed with the date and change directory* - make a new directory whose name is prefixed with the current date in YYYY-MM-DD format and change into it

Usage: `mkcddate new_directory`
```
$ mkcddate analysis       # will make a new directory named `YYYY-MM-DD-analysis` and change into it
```
Dependencies: `date`, `mkdir`, `cd`

---
#### clear
*clear file or screen* - clears a file or the screen depending on user input

Usage: `clear [file]`
```
$ clear             # clears the terminal screen, normal Linux functionality
$ clear file.txt    # clears file.txt (i.e. makes file.txt an empty file without deleting and recreating it)
```
Dependencies: `clear`

---
#### del
*deletes random files* - deletes a file (default) or files at random from the current directory

Usage: `del [num_of_files]`
```
$ del         # removes the default of 1 file at random from the current directory
$ del 10      # removes 10 files at random from the current directory
```
Dependencies: `grep`, `sort`, `tail`, `ls`, `read`

---
#### clonecd
*git clone and change directory* - clone a git repository and change into the new repository's directory

Usage: `clonecd repo_name`
```
$ clonecd ssh://git@host.domain.com:5555/repo_name
Cloning into 'repo_name'...
Enter passphrase for key '/Users/username/.ssh/id_rsa': 
remote: Counting objects: 7, done.
remote: Compressing objects: 100% (7/7), done.
remote: Total 7 (delta 1), reused 0 (delta 0)
Receiving objects: 100% (7/7), done.
Resolving deltas: 100% (1/1), done.
$ pwd
/repo_name/
```
Dependencies: `git`, `cd`, `basename`

---

## Statistics & Tools
These functions show statistics about the system, environment, and files, or act as general tools.

#### md5c
*MD5 checksum check* - checks the `md5sum` for two files, prints `PASS` if the two `md5sum`s are the same and `FAIL` if they are different

Usage: `md5c file1 file2`
```
$ md5c same.txt same.txt
PASS 4db87b0207fc90a2033f4031fa6348e9
$ md5c different0.txt different1.txt
FAIL d41d8cd98f00b204e9800998ecf8427e 4db87b0207fc90a2033f4031fa6348e9
```
Dependencies: `md5sum`, `awk`, `echo`

#### cf
*count files* - counts the number of files in a directory and its subdirectories

Usage: `cf [directory]`
```
$ cf                          # count files in the current directory (.)
15 files
$ cf dir                      # count files in directory dir
745 files
```
Dependencies: `find`, `wc`, `echo`

---
#### up
*up* - move up a directory (default) or multiple directories (replaces `cd ..`, `cd ../..`, etc.)

Usage: `up [number_of_directories]`
```
$ pwd
dir0/dir1/dir2/dir3/dir4/
$ up                          # move up 1 directory (default)
dir0/dir1/dir2/dir3/
$ up 2                        # move up 2 directories
dir0/dir1/
```
Dependencies: `cd`, `echo`, `pwd`

---
#### down
*down* - move back down a directory if just used up

This function is a WIP.

---
#### common
*common* - show the most commonly used commands (default is 10)

Usage: `common [number_of_commands]`
```
$ common
     1	100  20%    git
     2	58   11.6%  cd
     3	58   11.6%  python
     4	39   7.8%   ls
     5	31   6.2%   tmux
     6	25   5%     make
     7	19   3.8%   lynx
     8	14   2.8%   vim
     9	14   2.8%   brew
    10	11   2.2%   java
$ common 2
     1  100  20%    git
     2  58   11.6%  cd
```
Dependencies: `history`, `awk`, `grep`, `column`, `head`, `sort`

---
#### snag
*snag* - "snag" the most recent document (default) or documents from the Downloads folder and move them to the current directory

Usage: `snag [number_of_files]`
```
$ snag            # move the most recently downloaded file to current directory
$ snag 3          # move the 3 most recently downloaded files to the current directory
```
Dependencies: `head`, `ls`, `mv`

---
#### histg
*history grep* - greps (searches) through the command history

Usage: `histg term`
```
$ histg ls
  319  ls -al
  351  tmus ls
  352  tmux ls
  520  ls -al
  808  histg ls
```
Dependencies: `echo`, `history`, `grep`

---
#### intercept
*intercept* - intercept the `stderr` and `stdout` of a process

Usage: `intercept PID`
```
$ intercept 12373       # will print the stderr and stdout for PID 12373
```
Dependencies: `strace`

---
#### sbs
*sort-by-size* - list the contents of the current directory sorted by disk usage

Usage: `sbs [directory]`
```
$ sbs
350K    dir0/
45B     file.txt
$ sbs dir0
450G    analysis/
140K    data/
```
Dependencies: `du`, `sort`, `echo`, `cd`

---
#### cdls
*change directory and list files* - change into another directory and list its contents

Usage: `cdls directory`
```
$ cdls directory
file0.txt
file1.txt
$ pwd
/directory/
```
Dependencies: `cd`, `ls`, `echo`

---
#### rev
*reverse* - reverse input

Usage: `rev input`
```
$ rev "Hello, World!"
!dlroW, olleH
$ echo "Hello!" | rev
!olleH
```
Dependencies: `read`, `echo`, `sed`

---
#### what
*what* - lists what kinds of files are in the current directory (default) or a specific directory

Usage: `what [directory]`
```
$ what
.txt
.md
.py
$ what dir0
.java
Makefile
.c
```
Dependencies: `find`, `perl`

---
#### per
*percentage* - shows the percentage of each filetype for the current directory (default) or a specific directory

Usage: `per [directory]`
```
$ per
101  txt  (100.00%)
$ per ../dir0
5    py   (50.00%)
5    c    (50.00%)
```
Dependencies: `find`, `sed`, `sort`, `uniq`, `echo`, `bc`, `column`

---
#### show
*show* - recursively list all files of a specific type

Usage: `show filetype`
```
$ ls
dir0/
file0.txt
file1.txt
file2.txt
file0.md
file1.md
$ show txt
file0.txt
file1.txt
file2.txt
dir0/file0.txt
dir0/file1.txt
```
Dependencies: `echo`, `find`, `shift`, `printf`

---
#### dup
*disk usage pretty* - present the disk usage (`du`) output in a nicer format

Usage: `dup [directory]`
```
$ dup
52K    file.txt
15K    file2.txt
 TOTAL: 67K
```
Dependencies: `echo`, `cd`, `read`, `du`

---
#### duf
*disk usage by filetype* - get the disk usage by filetype

Usage: `duf filetype`
```
$ duf py
py: 30K
$ duf py md
py: 30K
md: 4.7K
```
Dependencies: `echo`, `find`, `read`, `shift`

---
#### get
*get* - get a file (default) or multiple files at random from the current directory

Usage `get [number_of_files]`
```
$ ls
file0.txt
file1.txt
file2.txt
$ get
file2.txt
$ get 2
file0.txt
file1.txt
```
Dependencies: `echo`, `ls`, `grep`, `sort`, `tail`, `read`
#### lbl
*grep line-by-line* - searches through a file line-by-line and pauses at each line (waits for user input)

Usage: `lbl term file`
```
$ lbl def program.py
def hello():

def world(param):

```
Dependencies: `echo`, `read`, `grep`

---
## Environment
These functions all have to do with monitoring or modifying the environment (shell, operating system, etc.).
#### adda
*add alias* - adds an alias on the fly

Usage: `adda alias full_command`
```
$ adda e echo
$ e "Hello, world!"
Hello, world!
```
Dependencies: `echo`, `source`

---
#### addv
*add variable* - adds a variable on the fly

Usage: `addv variable value`
```
$ addv shortcut /long/path/to/a/remote/directory/thats/annoying/to/type/a/lot
$ cd $shortcut
$ pwd
/long/path/to/a/remote/directory/thats/annoying/to/type/a/lot/
```
Dependencies: `echo`, `source`

---
#### dp
*different prompt* - switch between different prompts (`PS1` variables)

This function is a WIP.

---
#### pathadd
*path add* - add to the `PATH` system variable

Usage: `pathadd path`
```
$ pathadd /new/path/          # prepends to PATH
$ pathadd /new/path/ after    # appends to PATH
```
Dependencies: `echo`, `grep`

---
#### pathrm
*path remove* - remove from the `PATH` system variable

Usage `pathrm path`
```
$ echo $PATH
/usr/bin/:/usr/sbin/
$ pathrm /usr/sbin/
$ echo $PATH
/usr/bin/
```
Dependencies: `echo`, `sed`

---
#### pathdedup
*path deduplicate* - deduplicate (remove duplicates) from the `PATH` system variable

Usage: `pathdedup`
```
$ echo $PATH
/usr/bin/:/usr/bin/:/usr/sbin/
$ pathdedup
/usr/bin/:/usr/sbin
```
Dependencies: `perl`, `grep`

---
#### ostype
*operating system type* - attempt to print the operating system type (at a high level)

Usage: `ostype`
```
$ ostype
Linux
```
Dependencies: `uname`, `echo`

---
#### kp
*kill process* - kills a process by name

Usage `kp process_name`
```
$ kp netem
PID 3345 (netem) killed
$ kp sdfasd
no processes killed, could not find PID for process sdfasd
```
Dependencies: `echo`, `ps`, `grep`, `kill`

---
#### psgrep
*process list grep* - grep (search) for a process by name

Usage: `psgrep process_name`
```
$ psgrep bash
wcarhart         12373   0.0  0.0  4296240   2488 s000  S    Tue02AM   0:02.90 -bash
```
Dependencies: `ps`, `grep`, `echo`

---
#### mkgit
*make new git repository* - make a new directory, initialize it as a `git` repository, and change into it

Usage: `mkgit repo_name`
```
$ mkgit new_repo
Initialized empty Git repository in /Users/wcarhart/new_repo/.git/
$ pwd
/new_repo/
```
Dependencies: `mkdir`, `cd`, `git`

---
#### cppwd
*copy present working directory* - copy the present working directory to the clipboard

Usage: `cppwd`
```
$ cppwd       # result of pwd is copied to the clipboard
$
```
Dependencies: `pwd`, `pbcopy`

---
#### cplast
*copy last command* - copy the last executed command to the clipboard

Usage: `cplast`
```
$ echo 'Hello, world!'
Hello, world!
$ cplast     # "echo 'Hello, world!'" is copied to the clipboard
$
```
Dependencies: `fc`, `head`, `tac`, `rm`, `pbcopy`

---
## Miscellaneous
Miscellaneous functions for general use.

#### fixlines
*fix lines* - repair line endings

Usage: `fixlines file`
```
$ fixlines file0.txt          # changes \r\n in file0.txt to just \n
```
Dependencies: `perl`

---
#### gitdefault
*git default* - get the default branch for a `git` repository

Usage: `gitdefault [remote_name]` (from within a `git` repository)
```
$ gitdefault        # assumes by default that the remote is name origin
master
$ gitdefault my_remote
develop
```
Dependencies: `git`, `grep`, `cut`

---
#### random
*random* - generates a random alphanumeric string of length 30 (default) or specified length

Usage: `random [length]`
```
$ random
1k42nJmdk&WJ3bhasN9DL8n3nd0qxE
$ random 5
Po05B
```
Dependencies: `strings`, `urandom`, `grep`, `head`, `tr`, `echo`

---
#### makes
*make script* - makes a script (default named `script.sh`) in the current directory of the last previous command (default) or previous specified amount of commands

Usage: `makes [number_of_commands] [name_of_script]`
```
$ ls
file0.txt
file1.txt
$ makes                  # makes a script of the previous command (`ls`) in a script called `./script.sh`
$ ls
file0.txt
file1.txt
script.sh
$ cat script.sh
ls
```
```
$ clear
$ ls
file0.txt
file1.txt
$ makes 2                # makes a script of the previous two commands (`clear` & `ls`) in a script called `./script.sh`
$ ls
file0.txt
file1.txt
script.sh
$ cat script.sh
clear
ls
```
```
$ clear
$ ls
$ makes 2 test.sh        # makes a script of the previous two commands (`clear` & `ls`) in a script called `test.sh`
$ ls
file0.txt
file1.txt
test.sh
$ cat test.sh
clear
ls
```
Dependencies: `echo`, `strings`, `urandom`, `fc`, `tac`, `head`, `rm`, `grep`, `tr`

---
#### makef
*make function* - makes a `BASH` function in either `.bashrc` or `.bash_functions` (depending on configuration, which is auto-detected by the function) of the last previous command (default) or previous specified amount of commands; function can be named or defaults to a random string

Usage: `makef [number_of_commands] [name_of_function]
```
$ ls
file0.txt
file1.txt
$ makef                  # makes a function of the previous command (`ls`) in a randomly named function
$ cat ~/.bashrc          # if a .bash_functions file exists, function will be saved there instead
function_wn39d() {
     ls
}
```
```
$ clear
$ ls
file0.txt
file1.txt
$ makef 2                # makes a function of the previous two commands (`clear` & `ls`) in a randomly named function
$ cat ~/.bashrc          # if a .bash_functions file exists, function will be saved there instead
function_s6U54() {
     clear
     ls >
}
```
```
$ clear
$ ls
file0.txt
file1.txt
$ makef 2 cls            # makes a function of the previous two commands (`clear` & `ls`) in a function named `cls` (clear and ls)
$ cat ~/.bashrc          # if a .bash_functions file exists, function will be saved there instead
cls() {
     clear
     ls
}
```
Dependencies: `strings`, `urandom`, `echo`, `printf`, `fc`, `head`, `tac`, `read`, `rm`, `source`, `tr`, `grep`

---
#### removef
*remove function* - removes a function from either the `.bashrc` or `.bash_functions` file

Usage: `removef function_name`
```
$ removef cls
Removed cls from .bashrc
$ remove cls
cls not found in .bashrc
```
Dependencies: `echo`, `strings`, `urandom`, `grep`, `head`, `tr`, `grep`, `read`, `printf`, `source`, `cat`, `rm`

---
#### lsf
*list functions* - lists all functions from either the `.bashrc` or `.bash_functions` file

Usage: `lsf`
```
$ lsf
cls()
up()
siren()
$ removef cls
$ lsf
up()
siren()
```
Dependencies: `read`, `echo`, `fold`, `tr`

---
#### gmail
*gmail* - show number of unread emails in your Gmail inbox

Usage `gmail email`
```
$ gmail me@email.com
45
```
Dependencies: `echo`, `curl`, `sed`

---
#### publicip
*public ip address* - show your public IP address

Usage: `publicip`
```
$ publicip
105.38.27.128
```
Dependencies: `echo`, `dig`

---
#### getlocation
*get location* - get the location associated with your public IP address

Usage: `getlocation`
```
$ getlocation
IP: 105.38.27.128
Location: San Francisco, CA, USA
```
Dependencies: `dig`, `lynx`, `egrep`, `read`, `echo`, `cut`, `column`

---
#### pause
*pause* - pause execution of the current process and wait for user input

Usage: `pause`
```
$ pause
Press any key to continue...
```
Dependencies: `read`

---
#### resetbar
*reset Macbook Pro touch bar* - restart the Macbook Pro touch bar if it has crashed or malfunctioned

Usage: `resetbar`
```
$ resetbar     # automatically resets touch bar
```
Dependencies: `pkill`, `killall`

---

## Useless
These functions have either funny outputs or don't have a specific useful purpose :)

#### dummy
*dummy* - function that does nothing (great for testing purposes)

Usage: `dummy`
```
$ dummy                  # does nothing
$
```
Dependencies: none

---
#### busy
*busy* - output on the terminal to make it look like you're busy

Usage: `busy`
```
$ busy                   # draws a bunch of meaningless graphs on the terminal to monitor real but meaningless processes
```
Dependencies: `cat`, `hexdump`, `grep`

---
#### siren
*siren* - sound the alarm

Usage: `siren`
```
$ siren                  # guess you'll have to try this one out to see what it does
```
Dependencies: `printf`

---
#### rickroll
*rickroll* - do you really need a description

Usage: `rickroll`
```
$ rickroll               # guess you'll have to try this one out to see what it does
```
Dependencies: `printf`, `yes`

---
#### lscows
*list cows* - list all of the available cow artwork for `cowsay`

Usage: `lscows`
```
$ lscows                 # guess you'll have to try this one out to see what it does
```
Dependencies: `cowsay`, `echo`, `tail`, `tr`

---
#### randimal
*randimal* - draws a randimal one the terminal screen with some helpful advice

Usage: `randimal [text]`
```
$ randimal                    # guess you'll have to try this one out to see what it does
$ randimal "Hello, world!"    # guess you'll have to try this one out to see what it does
```
Dependencies: `cowsay`, `fortune` `uname`, `echo`, `lolcat`, `brew` or `apt-get`, `shift`, `type`, `tail`, `tr`, `shuf` or `gshuf`

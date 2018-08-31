# BASH Functions
This is the general documentation for the BASH functions written in `.bash_functions`.

### Contents
| File Manipulation | Statistics & Tools | Environment   | Miscellaneous   | Useless      |
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
| [mkmv](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkmv) | [cdls](https://github.com/wcarhart/Konphig/blob/master/functions.md#cdls) | | [getlocation](https://github.com/wcarhart/Konphig/blob/master/functions.md#getlocation)
| [mkmvcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkmvcd) | [rev](https://github.com/wcarhart/Konphig/blob/master/functions.md#rev)| | [pause](https://github.com/wcarhart/Konphig/blob/master/functions.md#pause)
| [mkcp](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcp) | [what](https://github.com/wcarhart/Konphig/blob/master/functions.md#what)
| [mkcpcd](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcpcd) | [per](https://github.com/wcarhart/Konphig/blob/master/functions.md#per)
| [rmd](https://github.com/wcarhart/Konphig/blob/master/functions.md#rmd) | [show](https://github.com/wcarhart/Konphig/blob/master/functions.md#show)
| [mkdate](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkdate) | [dup](https://github.com/wcarhart/Konphig/blob/master/functions.md#dup)
| [mkcddate](https://github.com/wcarhart/Konphig/blob/master/functions.md#mkcddate) | [duf](https://github.com/wcarhart/Konphig/blob/master/functions.md#duf)
| [clear](https://github.com/wcarhart/Konphig/blob/master/functions.md#clear) | [get](https://github.com/wcarhart/Konphig/blob/master/functions.md#get)
| [del](https://github.com/wcarhart/Konphig/blob/master/functions.md#del) | [lbl](https://github.com/wcarhart/Konphig/blob/master/functions.md#lbl)


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

## Statistics & Tools
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
txt
md
py
$ what dir0
java
Makefile
c
```
Dependencies: `find`, `perl`

---
#### per
*percentage* - shows the percentage of each filetype for the current directory (default) or a specific directory

Usage: `per [directory]`
```
$ per
101  txt  (100.00%)
$ per dir0
5    py   (50.00%)
5    c    (50.00%)
```
Dependencies: `find`, `sed`, `sort`, `uniq`, `echo`, `bc`, `column`

---
#### show
#### dup
#### duf
#### get
#### lbl

## Environment
#### adda
#### addv
#### dp
#### pathadd
#### pathrm
#### pathdedup
#### ostype
#### kp
#### psgrep

## Miscellaneous
#### fixlines
#### gitdefault
#### random
#### makes
#### makef
#### removef
#### lsf
#### gmail
#### publicip
#### getlocation
#### pause

## Useless
#### dummy
#### busy
#### siren
#### rickroll
#### lscows
#### randimal

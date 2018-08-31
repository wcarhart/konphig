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
#### extract
*extract* - extracts compressed and zipped files automatically

Usage: `extract file`
```
$ extract contents.bz2
```
#### grab
*grab* - "grabs" a file and changes its owner to the current user (requires `sudo` access)

Usage: `grab file`
```
$ grab file_not_owned_by_me.txt
```
#### ranf
*add random test files* - adds nonempty text files to the current directory for testing purposes (default is 100 files)

Usage: `ranf [num_of_files]`
```
$ ranf       # adds default of 100 text files
$ ranf 10    # adds 10 text files
```
#### rmr
*remove recursively* - removes specific filetypes recursively (in the current directory and all subdirectories)

Usage: `rmr *.filetype`
```
$ rmr *.txt       # removes all .txt files recursively
$ rmr *.txt *.py  # removes all .txt and .py files recursively
```
#### mvcd
*move files and change directory* - move files into a destination directory and then changes into the destination directory

Usage: `mvcd files destination`
```
$ mvcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ mvcd *.txt d                  # move all .txt files into d and change into d
```
#### mvrm
*move files and remove directory* - move files from the current directory and delete the current directory and its remaining contents (*WARNING*: will forcefully remove source, even if nonempty directory (use case is with `*`))

Usage: `mvrm files destination`
```
$ mvrm *.java ..      # move all .java files to the parent directory (..) and delete the current directory (.)
```
#### cpcd
*copy files and change directory* - copies files into a destination directory and then changes into the destination directory

Usage: `cpcd files destination`
```
$ cpcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ cpcd *.txt d                  # move all .txt files into d and change into d
```
#### cppcd
*copy files with a progress bar and change directory* - copies files into a destination directory while showing a progress bar and then changes into the destination directory

Usage: `cppcd files destination`
```
$ cppcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ cppcd *.txt d                  # move all .txt files into d and change into d
```
#### mkcd
*make directory and change directory* - make a new directory and change into it

Usage: `mkcd directory`
```
$ mkcd newdir     # make a new directory newdir and changes into it
```
#### mkmv
*make directory and move files* - make a new directory and move files into it

Usage: `mkmv directory files`
```
$ mkmv newdir file0.py file1.py     # make a new directory newdir and move file0.py and file1.py into newdir
$ mkmv newdir *.swift               # make a new directory newdir and move all .swift files into newdir
```
#### mkmvcd
*make directory, move files, and change directory* - make a new directory, move files into it, and then change into it

Usage: `mkmvcd newdir files`
```
$ mkmvcd newdir file0.py file1.py     # make a new directory newdir, move file0.py and file1.py into newdir, and then change into newdir
$ mkmvcd newdir *.swift               # make a new directory newdir, move all .swift files into newdir, and then change into newdir
```
#### mkcp
*make directory and copy files* - make a new directory and copy files into it

Usage: `mkcp directory files`
```
$ mkcp newdir file0.py file1.py     # make a new directory newdir and copy file0.py and file1.py into newdir
$ mkcp newdir *.swift               # make a new directory newdir and copy all .swift files into newdir
```
#### mkcpcd
*make directory, copy files, and change directory* - make a new directory, copy files into it, and then change into it

Usage: `mkcpcd newdir files`
```
$ mkcpcd newdir file0.py file1.py     # make a new directory newdir, copy file0.py and file1.py into newdir, and then change into newdir
$ mkcpcd newdir *.swift               # make a new directory newdir, copy all .swift files into newdir, and then change into newdir
```
#### rmd
*remove subdirectories* - remove all subdirectories of the current directory (*WARNING:* will forcefully remove nonempty subdirectories)

Usage: `rmd parent_directory`
```
$ rmd         # removes all directories in the current directory
$ rmd d/      # removes all subdirectories in d (i.e. d/dir0, d/dir1, ...)
```
#### mkdate
*make directory prefixed with the date* - make a new directory whose name is prefixed with the current date in YYYY-MM-DD format

Usage: `mkdate new_directory`
```
$ mkdate analysis       # will make a new directory named `YYYY-MM-DD-analysis`
```
#### mkcddate
*make directory prefixed with the date and change directory* - make a new directory whose name is prefixed with the current date in YYYY-MM-DD format and change into it

Usage: `mkcddate new_directory`
```
$ mkcddate analysis       # will make a new directory named `YYYY-MM-DD-analysis` and change into it
```
#### clear
*clear file or screen* - clears a file or the screen depending on user input

Usage: `clear [file]`
```
$ clear             # clears the terminal screen, normal Linux functionality
$ clear file.txt    # clears file.txt (i.e. makes file.txt an empty file without deleting and recreating it)
```
#### del
*deletes random files* - deletes a file (default) or files at random from the current directory

Usage: `del [num_of_files]`
```
$ del         # removes the default of 1 file at random from the current directory
$ del 10      # removes 10 files at random from the current directory
```

## Statistics & Tools
#### md5c
#### cf
#### up
#### down
#### common
#### snag
#### histg
#### intercept
#### sbs
#### cdls
#### rev
#### what
#### per
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

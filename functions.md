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


### File Manipulation
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
*add random test files:* - adds nonempty text files to the current directory for testing purposes (default is 100 files)

Usage: `ranf num_of_files`
```
$ ranf       # adds default of 100 text files
$ ranf 10    # adds 10 text files
```
#### rmr
#### mvcd
#### mvrm
#### cpcd
#### cppcd
#### mkcd
#### mkmv
#### mkmvcd
#### mkcp
#### mkcpcd
#### rmd
#### mkdate
#### mkcddate
#### clear
#### del

### Statistics & Tools
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

### Environment
#### adda
#### addv
#### dp
#### pathadd
#### pathrm
#### pathdedup
#### ostype
#### kp
#### psgrep

### Miscellaneous
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

### Useless
#### dummy
#### busy
#### siren
#### rickroll
#### lscows
#### randimal

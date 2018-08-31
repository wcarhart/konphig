# BASH Functions
This is the general documentation for the BASH functions written in `.bash_functions`.

### Contents
| File Manipulation | Statistics & Tools | Environment   | Miscellaneous   | Useless      |
|:-----------------:|:------------------:|:-------------:|:---------------:|:------------:|
| [extract]()       | [md5c]()           | [adda]()      | [fixlines]()    | [dummy]()    |
| [grab]()          | [cf]()             | [addv]()      | [gitdefault]()  | [busy]()     |
| [ranf]()          | [up]()             | [dp]()        | [random]()      | [siren]()    |
| [rmr]()           | [down]()           | [pathadd]()   | [makes]()       | [rickroll]() |
| [mvcd]()          | [common]()         | [pathrm]()    | [makef]()       | [lscows]()   |
| [mvrm]()          | [snag]()           | [pathdedup]() | [removef]()     | [randimal]() |
| [cpcd]()          | [histg]()          | [ostype]()    | [lsf]()         |              |
| [cppcd]()         | [intercept]()      | [kp]()        | [gmail]()       |              |
| [mkcd]()          | [sbs]()            | [psgrep]()    | [publicip]()    |              |
| [mkmv]()          | [cdls]()           |               | [getlocation]() |              |
| [mkmvcd]()        | [rev]()            |               | [pause]()       |              |
| [mkcp]()          | [what]()           |               |                 |              |
| [mkcpcd]()        | [per]()            |               |                 |              |
| [rmd]()           | [show]()           |               |                 |              |
| [mkdate]()        | [dup]()            |               |                 |              |
| [mkcddate]()      | [duf]()            |               |                 |              |
| [clear]()         | [get]()            |               |                 |              |
| [del]()           | [lbl]()            |               |                 |              |


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

# BASH Functions
This is the full Bash functions documentation.

### Contents
<table>
     <tr>
          <td><a href="#adda">adda</a></td>
          <td><a href="#dp">dp</a></td>
          <td><a href="#makes">makes</a></td>
          <td><a href="#random">random</a></td>
     </tr>
     <tr>
          <td><a href="#addv">addv</a></td>
          <td><a href="#duf">duf</a></td>
          <td><a href="#md5c">md5c</a></td>
          <td><a href="#ranf">ranf</a></td>
     </tr>
     <tr>
          <td><a href="#aid">aid</a></td>
          <td><a href="#dummy">dummy</a></td>
          <td><a href="#mkcd">mkcd</a></td>
          <td><a href="#rcreate">rcreate</a></td>
     </tr>
     <tr>
          <td><a href="#brave">brave</a></td>
          <td><a href="#dup">dup</a></td>
          <td><a href="#mkcddate">mkcddate</a></td>
          <td><a href="#resetbar">resetbar</a></td>
     </tr>
     <tr>
          <td><a href="#busy">busy</a></td>
          <td><a href="#esubl">esubl</a></td>
          <td><a href="#mkdate">mkdate</a></td>
          <td><a href="#rev">rev</a></td>
     </tr>
     <tr>
          <td><a href="#cdls">cdls</a></td>
          <td><a href="#extract">extract</a></td>
          <td><a href="#mkgit">mkgit</a></td>
          <td><a href="#rickroll">rickroll</a></td>
     </tr>
     <tr>
          <td><a href="#cf">cf</a></td>
          <td><a href="#fixlines">fixlines</a></td>
          <td><a href="#mvcd">mvcd</a></td>
          <td><a href="#rmd">rmd</a></td>
     </tr>
     <tr>
          <td><a href="#chrome">chrome</a></td>
          <td><a href="#get">get</a></td>
          <td><a href="#mvmk">mvmk</a></td>
          <td><a href="#rmf">rmf</a></td>
     </tr>
     <tr>
          <td><a href="#clear">clear</a></td>
          <td><a href="#getlocation">getlocation</a></td>
          <td><a href="#mvmkcd">mvmkcd</a></td>
          <td><a href="#rmr">rmr</a></td>
     </tr>
     <tr>
          <td><a href="#clonecd">clonecd</a></td>
          <td><a href="#gimme">gimme</a></td>
          <td><a href="#mvrm">mvrm</a></td>
          <td><a href="#sbs">sbs</a></td>
     </tr>
     <tr>
          <td><a href="#common">common</a></td>
          <td><a href="#gitcfb">gitcfb</a></td>
          <td><a href="#ostype">ostype</a></td>
          <td><a href="#show">show</a></td>
     </tr>
     <tr>
          <td><a href="#cpcd">cpcd</a></td>
          <td><a href="#gitdefault">gitdefault</a></td>
          <td><a href="#over">over</a></td>
          <td><a href="#siren">siren</a></td>
     </tr>
     <tr>
          <td><a href="#cplc">cplc</a></td>
          <td><a href="#grab">grab</a></td>
          <td><a href="#pathadd">pathadd</a></td>
          <td><a href="#snag">snag</a></td>
     </tr>
     <tr>
          <td><a href="#cplo">cplo</a></td>
          <td><a href="#grepp">grepp</a></td>
          <td><a href="#pathdedup">pathdedup</a></td>
          <td><a href="#up">up</a></td>
     </tr>
     <tr>
          <td><a href="#cpmk">cpmk</a></td>
          <td><a href="#json">json</a></td>
          <td><a href="#pathrm">pathrm</a></td>
          <td><a href="#update">update</a></td>
     </tr>
     <tr>
          <td><a href="#cpmkcd">cpmkcd</a></td>
          <td><a href="#kp">kp</a></td>
          <td><a href="#pause">pause</a></td>
          <td><a href="#what">what</a></td>
     </tr>
     <tr>
          <td><a href="#cppwd">cppwd</a></td>
          <td><a href="#last">last</a></td>
          <td><a href="#per">per</a></td>
          <td><a href="#"></a></td>
     </tr>
     <tr>
          <td><a href="#del">del</a></td>
          <td><a href="#lscows">lscows</a></td>
          <td><a href="#psgrep">psgrep</a></td>
          <td><a href="#"></a></td>
     </tr>
     <tr>
          <td><a href="#dive">dive</a></td>
          <td><a href="#lsf">lsf</a></td>
          <td><a href="#publicip">publicip</a></td>
          <td><a href="#"></a></td>
     </tr>
     <tr>
          <td><a href="#down">down</a></td>
          <td><a href="#makef">makef</a></td>
          <td><a href="#randimal">randimal</a></td>
          <td><a href="#"></a></td>
     </tr>
</table>

### Functions

**<a id="adda">`adda`</a>** - *add alias* - adds an alias on the fly

Usage: `adda alias full_command`
```
$ adda e echo
$ e "Hello, Konphig!"
Hello, Konphig!
```
**Dependencies**: `echo`, `source`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="addv">`addv`</a>** - *add variable* - adds a variable on the fly

Usage: `addv variable value`
```
$ addv shortcut /long/path/to/a/directory/thats/annoying/to/type/a/lot
$ cd $shortcut
$ pwd
/long/path/to/a/directory/thats/annoying/to/type/a/lot/
```
**Dependencies**: `echo`, `source`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="aid">`aid`</a>** - *aid* - get some helpful hints about a command

Usage: `aid command`
```
$ $ aid scp
# 
# scp
# 
# Secure copy.
# Copy files between hosts using Secure Copy Protocol over SSH.
# 
# Copy a local file to a remote host:
  scp path/to/local_file remote_host:path/to/remote_file
# 
# Copy a file from a remote host to a local directory:
  scp remote_host:path/to/remote_file path/to/local_directory
# 
# Recursively copy the contents of a directory from a remote host to a local directory:
  scp -r remote_host:path/to/remote_directory path/to/local_directory
# 
# Copy a file between two remote hosts transferring through the local host:
  scp -3 host1:path/to/remote_file host2:path/to/remote_directory
# 
# Use a specific username when connecting to the remote host:
  scp path/to/local_file remote_username@remote_host:path/to/remote_directory
# 
# Use a specific ssh private key for authentication with the remote host:
  scp -i ~/.ssh/private_key local_file remote_host:/path/remote_file
# 
#
```
**Dependencies**: `echo`, `curl`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="brave">`brave`</a>** - *brave* - open a file in [Brave Browser](https://brave.com/) from the command line

Usage `brave file [file ...]`
```
$ brave README.md                # opens README.md in Brave Browser
$ brave index.html detail.html   # opens index.html and detail.html in Brave Browser
```
**Dependencies**: `echo`, `open`, [Brave](https://brave.com/)

**Compatibility**: *MacOS* only

---
**<a id="busy">`busy`</a>** - *busy* - output on the terminal to make it look like you're busy

Usage: `busy`
```
$ busy                   # draws a bunch of meaningless graphs on the terminal to monitor real but meaningless processes
```
**Dependencies**: `cat`, `hexdump`, `grep`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="cdls">`cdls`</a>** - *change directory, list* - change into another directory and list its contents

Usage: `cdls [directory]`
```
$ cdls directory
file0.txt
file1.txt
$ pwd
/directory/
```
**Dependencies**: `cd`, `ls`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="cf">`cf`</a>** - *count files* - counts the number of files in a directory and its subdirectories

Usage: `cf [directory]`
```
$ cf                          # count files in the current directory (.)
15 files
$ cf dir                      # count files in directory dir
745 files
```
**Dependencies**: `find`, `wc`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="chrome">`chrome`</a>** - *chrome* - open a file in Google Chrome from the command line

Usage `chrome file [file ...]`
```
$ chrome README.md               # opens README.md in Chrome
$ chrome index.html detail.html  # opens index.html and detail.html in Chrome
```
**Dependencies**: `echo`, `open`, [Chrome](https://www.google.com/chrome/)

**Compatibility**: *MacOS* only

---
**<a id="clear">`clear`</a>** - *clear* - clears a file or the screen depending on user input

Usage: `clear [file ...]`
```
$ clear             # clears the terminal screen, normal Linux functionality
$ clear file.txt    # clears file.txt (i.e. makes file.txt an empty file without deleting and recreating it)
```
**Dependencies**: `clear`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="clonecd">clonecd</a>** - *clone, cd* - clone a git repository and change into the new repository's directory

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
**Dependencies**: `git`, `cd`, `basename`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="common">common</a>** - *common* - show the most commonly used commands (default is 10)

Usage: `common [number_of_commands]`
```
$ common
     1    100  20%    git
     2    58   11.6%  cd
     3    58   11.6%  python
     4    39   7.8%   ls
     5    31   6.2%   tmux
     6    25   5%     make
     7    19   3.8%   lynx
     8    14   2.8%   vim
     9    14   2.8%   brew
    10    11   2.2%   java
$ common 2
     1  100  20%    git
     2  58   11.6%  cd
```
**Dependencies**: `history`, `awk`, `grep`, `column`, `head`, `sort`, `nl`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="cpcd">cpcd</a>** - *copy, change directory* - copies files into a destination directory and then changes into the destination directory

Usage: `cpcd file [file ...] destination`
```
$ cpcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ cpcd *.txt d                  # move all .txt files into d and change into d
```
**Dependencies**: `echo`, `cp`, `cd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="cplc">cplc</a>** - *copy last command* - copy the last command to the clipboard

Usage: `cplc`
```
$ cd /long/path/to/a/directory
$ cplc            # `cd /long/path/to/a/directory` is saved in the clipboard
```
**Dependencies**: `history`, `tail`, `head`, `echo`, `pbcopy`

**Compatibility**: *MacOS* only

---
**<a id="cplo">cplo</a>** - *copy last output* - copy the output of the last command to the clipboard

Usage: `cplc`
```
$ echo "Hello, Konphig!"
Hello, Konphig!
$ cplc            # `Hello, Konphig!` is saved in the clipboard
```
**Dependencies**: `history`, `tail`, `head`, `echo`, `pbcopy`

**Compatibility**: *MacOS* only

---
**<a id="cpmk">cpmk</a>** - *copy, make directory* - copy files to a new directory

Usage: `cpmk file [file ...] directory`
```
$ cpmk file0.py file1.py newdir    # make a new directory newdir and copy file0.py and file1.py into newdir
$ cpmk *.swift newdir              # make a new directory newdir and copy all .swift files into newdir
```
**Dependencies**: `echo`, `mkdir`, `cp`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="cpmkcd">cpmkcd</a>** - *copy, make directory, change directory* - copy files to a new directory, and then change into it

Usage: `cpmkcd file [file ...] directory`
```
$ cpmkcd file0.py file1.py newdir     # make a new directory newdir, copy file0.py and file1.py into newdir, and then change into newdir
$ cpmkcd *.swift newdir             # make a new directory newdir, copy all .swift files into newdir, and then change into newdir
```
**Dependencies**: `echo`, `mkdir`, `cp`, `cd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="cppwd">cppwd</a>** - *copy present working directory* - copy the present working directory to the clipboard

Usage: `cppwd`
```
$ pwd
/dir0/dir1/dir2
$ cppwd           # `/dir0/dir1/dir2` is saved in the clipboard
```
**Dependencies**: `echo`, `pwd`, `pbcopy`

**Compatibility**: *MacOS* only

---
**<a id="del">del</a>** - *delete* - deletes a file (default) or files at random from the current directory

Usage: `del [num_of_files]`
```
$ del         # removes the default of 1 file at random from the current directory
$ del 10      # removes 10 files at random from the current directory
```
**Dependencies**: `seq`, `rm`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="dive">dive</a>** - *dive* - follow (dive into) a directory tree down to its childmost node

Usage: `dive directory`
```
$ pwd
/
$ tree
.
|-- dir0
|   `-- dir1
|       |-- dir2
|       |-- test.py
|       `-- test2.py
|-- file0.txt
`-- file1.txt
$ dive dir0
/dir0/dir1/dir2
$ ls
test.py   test2.py
```
**Depdencies**: `readlink` (Linux), `greadlink` (MacOS), `basename`, `cd`, `pwd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="down">down</a>** - *down* -  go back down one directory if we go up one too many

Usage: `down [number_of_directories]`
```
$ pwd
~/workspace/projects/project/app/models/users
$ up 5                   # whoops, I only mean to go up 2
~/workspace
$ down                   # actually, can I go down a few more?
~/workspace/projects
$ down 3
~/workspace/projects/project/app/models
```
**Dependencies**: `pwd`, `cd`, `echo`, `seq`, `readlink` (Linux), `greadlink` (MacOS)

**Compatibility**: *MacOS* and *Linux*

---
**<a id="dp">dp</a>** - *different prompt* - switch between different prompts (`PS1` variables)

Usage: `dp [prompt_index]`
```
$ dp 1
[11:57] ~ ༼ つ ◕_◕ ༽つ dp 2
[11:57] > dp 3
[wcarhart@willcarhart] Wed Jun 19, 11:57:23 <~> $ dp 4
^_^ $ command_that_fails
-bash: command_that_fails: command not found
O_O $ cd ~
^_^ $ dp 1
[11:57] ~ ༼ つ ◕_◕ ༽つ 
```
**Dependencies**: `export`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="duf">duf</a>** - *disk usage, filetype* - get the disk usage by filetype

Usage: `duf filetype`
```
$ duf py
py: 30K
$ duf py md
py: 30K
md: 4.7K
```
**Dependencies**: `echo`, `find`, `read`, `shift`, `gdu` (MacOS), `du` (Linux), `xargs`, `tail`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="dummy">dummy</a>** - *dummy* - function that does nothing (great for testing purposes)

Usage: `dummy`
```
$ dummy                  # does nothing
$
```
**Dependencies**: none

**Compatibility**: *MacOS* and *Linux*

---
**<a id="dup">dup</a>** - *disk usage, pretty* - present the disk usage (`du`) output in a nicer format

Usage: `dup [directory]`
```
$ dup
52K    file.txt
15K    file2.txt
 TOTAL: 67K
```
**Dependencies**: `echo`, `sed`, `read`, `gdu` (MacOS), `du` (Linux)

**Compatibility**: *MacOS* and *Linux*

---
**<a id="esubl">esubl</a>** - *execute, Sublime* - execute a file and open it in Sublime

Usage: `eao file_name [args]`
```
# printargs.py is a simple Python script that will print its command line arguments
$ eao printargs.py                      # opens printargs.py in separate Sublime window
['printargs.py']
$ eao printargs.py 1 2 3                # opens printargs.py in separate Sublime window, command line args don't affect opening
['printargs.py', '1', '2', '3']         # command line args still work with execution
$ echo "echo 'Hello, Konphig! '" > test.sh  # works with .sh, .py, .rb, and .java files
$ eao test.sh
Hello, Konphig!
```
**Dependencies**: `echo`, `subl`, `python3`, `ruby`, `java`

**Compatibility**: *MacOS* only

---
**<a id="extract">`extract`</a>** - *extract* - extracts compressed and zipped files automatically

Usage: `extract file`
```
$ extract contents.bz2
```
**Dependencies**: `tar`, `bunzip`, `unrar`, `gunzip`, `unzip`, `uncompress`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="fixlines">fixlines</a>** - *fix lines* - repair line endings

Usage: `fixlines file [file ...]`
```
$ fixlines file0.txt          # changes \r\n in file0.txt to just \n
```
**Dependencies**: `echo`, `sed`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="get">get</a>** - *get* - get a file (default) or multiple files at random from the current directory

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
**Dependencies**: `echo`, `seq`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="getlocation">getlocation</a>** - *get location* - get the location associated with your public IP address

Usage: `getlocation`
```
$ getlocation
IP: 105.38.27.128
Location: San Francisco, CA, USA
```
**Dependencies**: `dig`, `lynx`, `egrep`, `read`, `echo`, `cut`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="gimme">gimme</a>** - *give me* - gives the current user execution privileges for a file

Usage: `gimme file [file ...]`
```
$ echo "echo test" > script.sh
$ ./script.sh
-bash: ./script.sh: Permission denied
$ gimme script.sh
$ ./script.sh
test
```
**Dependencies**: `echo`, `chmod`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="gitcfb">gitcfb</a>** - *git copy from branch* - copy a file from a different git branch to the current one, overwriting the current copy, if it exists

Usage: `gitcfb branch file`
```
$ cat test.txt
I am a text file on the develop branch.
$ gitcfb master test.txt
$ cat test.txt
I am a text file on the master branch.
```
**Dependencies**: `echo`, `git`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="gitdefault">gitdefault</a>** - *git default* - get the default branch for a `git` repository

Usage: `gitdefault [remote_name]` (from within a `git` repository)
```
$ gitdefault        # assumes by default that the remote is name origin
master
$ gitdefault my_remote
develop
```
**Dependencies**: `git`, `grep`, `cut`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="grab">grab</a>** - *grab* - "grabs" a file and changes its owner to the current user

Usage: `grab file`
```
$ grab file_not_owned_by_me.txt
```
**Dependencies**: `echo`, `chown`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="grepp">grepp</a>** - *grep, pause* - searches through a file and pauses at each query match

Usage: `grepp term file`
```
$ grepp def program.py
def hello():

def world(param):

```
**Dependencies**: `echo`, `read`, `grep`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="json">json</a>** - *json* - pretty print a JSON file

Usage: `json file [file ...]`
```
$ cat test.json
{"repos":["Konphig", "willcarh.art"]}
$ json test.json
{
  "repos": [
    "Konphig",
    "willcarh.art"
  ]
}
```
**Dependencies**: `echo`, `cat`, `jq`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="kp">kp</a>** - *kill process* - kills a process by name

Usage `kp process_name`
```
$ kp netem
PID 3345 (netem) killed
$ kp sdfasd
kp: err: no processes killed, could not find PID for process sdfasd
```
**Dependencies**: `echo`, `ps`, `grep`, `pgrep`, `kill`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="last">last</a>** - *last* - print the most recently modified file in a directory

Usage: `last [directory]`
```
$ last
file.txt
$ last some_directory
otherfile.txt
```
**Dependencies**: `greadlink` (MacOS), `readlink` (Linux), `echo`, `ls`, `head`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="lscows">lscows</a>** - *list cows* - list all of the available cow artwork for `cowsay`

Usage: `lscows`
```
$ lscows                 # guess you'll have to try this one out to see what it does
```
**Dependencies**: `cowsay`, `echo`, `tail`, `tr`

**Compatibility**: *MacOS* only

---
**<a id="lsf">lsf</a>** - *list functions* - lists all functions from either the `.bashrc` or `.bash_functions` directory

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
**Dependencies**: `read`, `echo`, `fold`, `tr`, `basename`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="makef">makef</a>** - *make function* - makes a Bash function in either `.bashrc` or `.bash_functions` (depending on configuration, which is auto-detected by the function) of the last previous command (default) or previous specified amount of commands; function can be named or defaults to a random string

Usage: `makef [number_of_commands] [name_of_function]`
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
**Dependencies**: `strings`, [`random`](https://github.com/wcarhart/Konphig/blob/master/functions.md#random), `echo`, `printf`, `fc`, `head`, `tac`, `read`, `rm`, `source`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="makes">makes</a>** - *make script* - makes a script (default named `script.sh`) in the current directory of the last previous command (default) or previous specified amount of commands

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
**Dependencies**: `echo`, `strings`, [`random`](https://github.com/wcarhart/Konphig/blob/master/functions.md#random), `fc`, `tac`, `head`, `rm`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="md5c">md5c</a>** - *MD5 checksum check* - checks the MD5 hash for files; if there are multiple files, prints `PASS` if the hashes are the same and `FAIL` if they are different

Usage: `md5c file [file ...]`
```
$ md5c same.txt same.txt
PASS 
same.txt 4db87b0207fc90a2033f4031fa6348e9
same.txt 4db87b0207fc90a2033f4031fa6348e9
$ md5c different0.txt different1.txt
FAIL 
different0.txt d41d8cd98f00b204e9800998ecf8427e
different1.txt 4db87b0207fc90a2033f4031fa6348e9
```
**Dependencies**: `md5` (MacOS), `md5sum` (Linux), `awk`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mkcd">mkcd</a>** - *make directory, change directory* - make a new directory and change into it

Usage: `mkcd directory`
```
$ mkcd newdir     # make a new directory newdir and changes into it
```
**Dependencies**: `echo`, `mkdir`, `cd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mkcddate">mkcddate</a>** - *make directory prefixed with the date, change directory* - make a new directory whose name is prefixed with the current date in YYYY-MM-DD format and change into it

Usage: `mkcddate new_directory`
```
$ mkcddate analysis       # will make a new directory named `YYYY-MM-DD-analysis` and change into it
```
**Dependencies**: `date`, `mkdir`, `cd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mkdate">mkdate</a>** - *make directory prefixed with the date* - make a new directory whose name is prefixed with the current date in YYYY-MM-DD format

Usage: `mkdate new_directory`
```
$ mkdate analysis       # will make a new directory named `YYYY-MM-DD-analysis`
```
**Dependencies**: `date`, `mkdir`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mkgit">mkgit</a>** - *make new git repository* - make a new directory, initialize it as a `git` repository, and change into it

Usage: `mkgit repo_name`
```
$ mkgit new_repo
Initialized empty Git repository in /Users/wcarhart/new_repo/.git/
$ pwd
/new_repo/
```
**Dependencies**: `mkdir`, `cd`, `git`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mvcd">mvcd</a>** - *move files and change directory* - move files into a destination directory and then changes into the destination directory

Usage: `mvcd file [file ...] destination`
```
$ mvcd file0.txt file1.txt d    # move file0.txt and file1.txt into d and change into d
$ mvcd *.txt d                  # move all .txt files into d and change into d
```
**Dependencies**: `echo`, `mv`, `cd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mvmk">mvmk</a>** - *move, make directory* - make a new directory and move files into it

Usage: `mvmk file [file ...] directory`
```
$ mvmk file0.py file1.py newdir    # make a new directory newdir and move file0.py and file1.py into newdir
$ mvmk *.swift newdir              # make a new directory newdir and move all .swift files into newdir
```
**Dependencies**: `echo`, `mkdir`, `mv`

**Compability**: *MacOS* and *Linux*

---
**<a id="mvmkcd">mvmkcd</a>** - *move, make directory, change directory* - make a new directory, move files into it, and then change into it

Usage: `mvmkcd newdir files`
```
$ mvmkcd file0.py file1.py newdir    # make a new directory newdir, move file0.py and file1.py into newdir, and then change into newdir
$ mvmkcd *.swift newdir              # make a new directory newdir, move all .swift files into newdir, and then change into newdir
```
**Dependencies**: `echo`, `mkdir`, `mv`, `cd`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="mvrm">mvrm</a>** - *move, remove* - move contents from the current directory and delete the current directory

Usage: `mvrm destination`
```
$ mvrm ..      # move all file from the current directory to the parent directory and delete the current directory
```
**Dependencies**: `echo`, `mv`, `cd`, `rm`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="ostype">ostype</a>** - *operating system type* - get the operating system type

Usage: `ostype`
```
$ ostype
Linux
```
**Dependencies**: `uname`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="over">over</a>** - *over* - move up and over directories

Usage: `over [number_of_directories] directory`
```
$ pwd
/
$ tree
.
|-- dirA
|   `-- dirB
`-- dirC
    `-- dirD
$ cd dirA
$ over dirC
/dirC
$ cd dirD
$ over 2 dirA/dirB
/dirA/dirB
```
**Dependencies**: `echo`, `seq`, `cd`, `export`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="pathadd">pathadd</a>** - *path add* - add to the `PATH` system variable

Usage: `pathadd path [after]`
```
$ pathadd /new/path/          # prepends to PATH
$ pathadd /new/path/ after    # appends to PATH
```
**Dependencies**: `echo`, `export`, `grep`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="pathdedup">pathdedup</a>** - *path deduplicate* - deduplicate (remove duplicates) from the `PATH` system variable

Usage: `pathdedup`
```
$ echo $PATH
/usr/bin/:/usr/bin/:/usr/sbin/
$ pathdedup
/usr/bin/:/usr/sbin
```
**Dependencies**: `export`, `printf`, `awk`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="pathrm">pathrm</a>** - *path remove* - remove from the `PATH` system variable

Usage `pathrm path [path ...]`
```
$ echo $PATH
/usr/bin/:/usr/sbin/
$ pathrm /usr/sbin/
$ echo $PATH
/usr/bin/
```
**Dependencies**: `echo`, `sed`, `export`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="pause">pause</a>** - *pause* - pause execution of the current process and wait for user input

Usage: `pause`
```
$ pause
Press any key to continue...
```
**Dependencies**: `read`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="per">per</a>** - *percentage* - shows the percentage of each filetype for the current directory (default) or a specific directory

Usage: `per [directory]`
```
$ per
101  txt  (100.00%)
$ per ../dir0
5    py   (50.00%)
5    c    (50.00%)
```
**Dependencies**: `printf`, `echo`, `wc`, `bc`, `sed`, `column`

**Compatibility**: *Linux* only

---
**<a id="psgrep">psgrep</a>** - *process list, grep* - grep (search) for a process by name

Usage: `psgrep process_name`
```
$ psgrep bash
USER               PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND
wcarhart         15372   0.5  0.0  4296240   2416 s005  S     7:24PM   0:00.05 -bash
wcarhart         22564   0.0  0.0  4296240    400 s003  S    Mon01PM   0:01.37 -bash
wcarhart           466   0.0  0.0  4296240    392 s002  S+    2Jun19   0:00.14 -bash
wcarhart           459   0.0  0.0  4296240    392 s001  S+    2Jun19   0:00.03 -bash
wcarhart           437   0.0  0.0  4296240    392 s000  S+    2Jun19   0:00.04 -bash
```
**Dependencies**: `ps`, `grep`, `head`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="publicip">publicip</a>** - *public ip address* - show your public IP address

Usage: `publicip`
```
$ publicip
105.38.27.128
```
**Dependencies**: `echo`, `dig`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="randimal">randimal</a>** - *random animal* - draws a randimal on the terminal screen with some helpful advice

Usage: `randimal [text]`
```
$ randimal --install          # run the first time to install dependencies
$ randimal                    # guess you'll have to try this one out to see what it does
$ randimal "Hello, Konphig!"  # guess you'll have to try this one out to see what it does
```
**Dependencies**: `cowsay`, `fortune`, `echo`, `lolcat`, `tail`, `tr`, `gshuf`

**Compatibility**: *MacOS* only

---
**<a id="random">random</a>** - *random* - generates a random alphanumeric string of length 30 (default) or specified length

Usage: `random [length]`
```
$ random
1k42nJmdk&WJ3bhasN9DL8n3nd0qxE
$ random 5
Po05B
```
**Dependencies**: `gshuf` (MacOS), `shuf` (Linux), `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="ranf">ranf</a>** - *random files* - adds nonempty text files to the current directory for testing purposes (default is 100 files)

Usage: `ranf [num_of_files]`
```
$ ranf       # adds default of 100 text files
$ ranf 10    # adds 10 text files
```
**Dependencies**: `echo`, `touch`, `cat`, `rm`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="rcreate">rcreate</a>** - *remote create* - create new remote repository on GitHub and push the current commit to it

Usage: `rcreate [repo_name]`
```
$ basename `pwd`
cool_repo_dir
$ rcreate # Uses the basename of the current directory if no arg for repo_name is provided
Enter passphrase for key '/Users/username/.ssh/id_rsa': 
Counting objects: 1, done.
Writing objects: 100% (1/1), 8 bytes | 0 bytes/s, done.
Total 1 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/username/cool_repo_dir/pull/new/master
remote:
To https://github.com/username/cool_repo_dir.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
```
```
$ rcreate awesome_new_repo
Enter passphrase for key '/Users/username/.ssh/id_rsa': 
Counting objects: 1, done.
Writing objects: 100% (1/1), 8 bytes | 0 bytes/s, done.
Total 1 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/username/awesome_new_repo/pull/new/master
remote:
To https://github.com/username/awesome_new_repo.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
```
**Dependencies**: `git`, `curl`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="rmf">rmf</a>** - *remove function* - removes a function from either the `.bashrc` or `.bash_functions` file

Usage: `rmf function_name`
```
$ rmf cls
Removed cls from .bashrc
$ rmf cls
rmf: err: cls not found in .bashrc
```
**Dependencies**: `echo`, [`random`](https://github.com/wcarhart/Konphig/blob/master/functions.md#random), `read`, `printf`, `source`, `cat`, `rm`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="resetbar">resetbar</a>** - *reset Macbook Pro touch bar* - restart the Macbook Pro touch bar if it has crashed or malfunctioned

Usage: `resetbar`
```
$ resetbar     # automatically resets touch bar
```
**Dependencies**: `pkill`, `killall`

**Compatibility**: *MacOS* only

---
**<a id="rev">rev</a>** - *reverse* - reverse input

Usage: `rev input`
```
$ rev "Hello, Konphig!"
!gihpnoK, olleH
$ echo "Hello!" | rev
!olleH
```
**Dependencies**: `read` (Linux), `echo`, `sed`

**Compatibility**: *MacOS* (limited functionality) and *Linux*

---
**<a id="rickroll">rickroll</a>** - *rickroll* - do you really need a description

Usage: `rickroll`
```
$ rickroll               # guess you'll have to try this one out to see what it does
```
**Dependencies**: `printf`, `yes`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="rmd">rmd</a>** - *remove subdirectories* - remove all subdirectories of the current directory (**WARNING**: will forcefully remove nonempty subdirectories)

Usage: `rmd parent_directory`
```
$ rmd         # removes all directories in the current directory
$ rmd d/      # removes all subdirectories in d (i.e. d/dir0, d/dir1, ...)
```
**Dependencies**: `rm`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="rmr">rmr</a>** - *remove recursively* - removes specific filetypes recursively (in the current directory and all subdirectories)

Usage: `rmr *.filetype`
```
$ rmr *.txt       # removes all .txt files recursively
$ rmr *.txt *.py  # removes all .txt and .py files recursively
```
**Dependencies**: `find`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="sbs">sbs</a>** - *sort-by-size* - list the contents of the a directory sorted by disk usage

Usage: `sbs [directory]`
```
$ sbs          # default is current directory
350K    dir0/
45B     file.txt
$ sbs dir0
450G    analysis/
140K    data/
```
**Dependencies**: `gdu` (MacOS), `du` (Linux), `sort`, `sed`, `echo`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="show">show</a>** - *show* - recursively list all files of a specific type

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
**Dependencies**: `echo`, `find`, `shift`, `printf`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="siren">siren</a>** - *siren* - sound the alarm

Usage: `siren`
```
$ siren                  # guess you'll have to try this one out to see what it does
```
**Dependencies**: `printf`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="snag">snag</a>** - *snag* - "snag" the most recent document (default) or documents from the Downloads folder and move them to the current directory

Usage: `snag [number_of_files]`
```
$ snag            # move the most recently downloaded file to current directory
$ snag 3          # move the 3 most recently downloaded files to the current directory
```
**Dependencies**: `head`, `ls`, `mv`, `seq`

**Compatibility**: *MacOS* only

---
**<a id="up">up</a>** - *up* - move up a directory (default) or multiple directories (replaces `cd ..`, `cd ../..`, etc.)

Usage: `up [number_of_directories]`
```
$ pwd
dir0/dir1/dir2/dir3/dir4/
$ up                          # move up 1 directory (default)
dir0/dir1/dir2/dir3/
$ up 2                        # move up 2 directories
dir0/dir1/
```
**Dependencies**: `cd`, `echo`, `pwd`, `export`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="update">update</a>** - *update* - updates system configurations based on Konphig files

Usage: `update`
```
$ vim ~/Konphig/.bashrc                 # make an update to a Konphig file
$ update                                # changes are reflected in system configurations
Updating .bash_functions
$ update                                # dynamic updation: won't update files that haven't been changed
Nothing to update
```
**Dependencies**: [`ostype`](https://github.com/wcarhart/Konphig/blob/master/functions.md#ostype), `md5` (MacOS), `md5sum` (Linux), `echo`, `yes`, `cp`, `source`, `mkdir`, `basename`

**Compatibility**: *MacOS* and *Linux*

---
**<a id="what">what</a>** - *what* - lists what kinds of files are in the current directory (default) or a specific directory

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
**Dependencies**: `find`, `perl`

**Compatibility**: *Linux* only

---

<p align="center"><img alt="konphig logo" src="logo.png" /></p>

<h1 align="center">konphig</h1>
<h5 align="center">Config files for safe keeping 😏</h5>

## Summary
Konphig contains custom settings for common UNIX tools. You can think of it as a dotfiles repo, with some extra bells and whistles.

**Documentation:** read konphig's [full documentation](https://willcarhart.dev/docs/konphig)

**Installation:** see [install](#install)

## Key Features
Konphig comes packed out of the box with tons of cool functionality. Here are a few highlights.

### A powerful CLI
_Pull multiple registered repositories at once_
```bash
kn repo --pull
```
```
Pulling birdhouse...
Pulling koi...
Pulling lurker...
```
_Add Homebrew, Yarn, and other packages to track in version control_
```bash
kn new --brew yarn
```
```
Added brew formula 'yarn' to konphig
```

### Helpful Bash functions
_Join a list of strings_
```bash
merge '-' 'a b' c d
```
```
a b-c-d
```
_Add a permanent alias on the fly_
```bash
adda e echo
e 'Hello, konphig!'
```
```
Hello, konphig!
```
_Move up and down directories_
```bash
pwd
# /dir0/dir1/dir2/dir3/dir4
up 4
# /dir0
down 2
# /dir0/dir1/dir2
```

### Clever Git extras
_Remove local branches not present in the remote_
```bash
git clean
```
_Review local commits not present in the current branch in the remote_
```bash
git local
```
_Get the commits for the last sprint_
```bash
git sprint
```
_Get the primary authors for the repository_
```bash
git leaderboard
```
_Get all available git aliases_
```bash
git alias
```

### Much, much more
_Reset the macOS Touch Bar_
```bash
resetbar
```
_Get your public IP address_
```bash
publicip
```
_Change your command prompt on the fly_
```bash
dp 5    # change to 'different prompt' #5
```

## Documentation
Read more information in [konphig's complete documentation](https://willcarhart.dev/docs/konphig).

## Install
To install konphig, use the following:
1. Install `kn` with [Homebrew](https://brew.sh).
```bash
brew install wcarhart/tools/kn
```
2. Clone this repository.
```bash
git clone https://github.com/wcarhart/konphig.git ~/konphig
```
3. Initialize `kn` to point to your local repository (if you cloned konphig to somewhere other than `~/konphig`, make sure you pass in the correct path).
```bash
kn init ~/konphig
```
4. Install konphig via `kn`.
```bash
kn install
```
5. To complete the installation, the final step is to source your `.bashrc`.
```bash
source ~/.bashrc
```

Konphig should now be installed! You can interact with konphig via the `kn` CLI. To get started, use `kn --help`.

For more information, head over to [konphig's complete documentation](https://willcarhart.dev/docs/konphig).

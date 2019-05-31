# get help for BASH commands
aid() {
    if [[ $# -ne 1 ]] ; then
        echo "aid: err: incorrect number of arguments"
        return 1
    fi
    
    curl cheat.sh/$1
}

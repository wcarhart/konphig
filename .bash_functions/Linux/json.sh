# pretty print JSON files
json() {
    if [[ $# -eq 0 ]] ; then
        echo "json: err: incorrect number of arguments"
        return 1
    fi
    for ARG in $@ ; do
        cat "$ARG" | jq .
    done
}

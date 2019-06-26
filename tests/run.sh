if [[ ! -f ~/Konphig/tests/Dockerfile ]] ; then
	echo "-err: no such file ~/Konphig/tests/Dockerfile"
	exit 1
fi

if [[ `pgrep docker` == "" ]] ; then
	echo "-err: couldn't contact the Docker daemon - is Docker running?"
	exit 1
fi

docker build -t 'konphig:latest' ~/Konphig/tests/
docker run -it konphig

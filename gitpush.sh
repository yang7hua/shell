#!/bin/sh

echo=$(git pull)

if [[ $echo != "Already up-to-date." ]];then
	echo $echo 
	exit 0
fi

if [ ! $1 ];then
	echo "Usage: gitpush.sh comment"
	exit 0
fi

git add .

git commit -am $1

git push

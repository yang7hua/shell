#!/bin/bash

str=$1
replace=$2
dir=$3

if [[ ! $str ]] || [[ ! $replace ]];then
	echo "Usage $0 str replace dir ."
	exit 0
fi

if [[ ! $dir ]];then
	dir=.
fi

sed -i "" "s/$str/$replace/g" `grep $str -rl $dir`

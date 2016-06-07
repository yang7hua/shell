#!/bin/bash

ptpname=$1

if [[ ! $ptpname ]];then
	echo "Usage $0 ptpname ."
	exit 0
fi

cat ./$1/src/app/Hao/conf/config.php | grep DB_USER
cat ./$1/src/app/Hao/conf/config.php | grep DB_PWD

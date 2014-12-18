#!/bin/sh

url='https://www.yiqihao.com/events/yearmeetingapply?_do=list'

curl -o data.json -d "password=$1" $url

./py.py

echo '导出成功'

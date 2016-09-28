#!/bin/bash
if [[ ! $1 ]];then
	echo "Usage: $0 filename ."
	exit 0
fi

scp -P 20232 -r $1 dev_ops@112.124.35.221:/data3/www/www.bz-e.com/statics/images/ads/$1

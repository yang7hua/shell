#!/bin/sh

filename=$(basename $0)

case $1 in
	zxl_www2dev)
		cp /www/yiqihao/zhengxinla/www/app/zxl/controllers/* /www/yiqihao/zhengxinla/dev/app/zxl/controllers/
		cp /www/yiqihao/zhengxinla/www/app/zxl/models/* /www/yiqihao/zhengxinla/dev/app/zxl/models/
	;;
	zxl_dev2www)
		cp /www/yiqihao/zhengxinla/dev/app/zxl/controllers/* /www/yiqihao/zhengxinla/www/app/zxl/controllers/
		cp /www/yiqihao/zhengxinla/dev/app/zxl/models/* /www/yiqihao/zhengxinla/www/app/zxl/models/
	;;
	*)
		echo "Usage: $filename zxl_www2dev | zxl_dev2www | ack_dev2local | ack_local2dev";
	;;
esac

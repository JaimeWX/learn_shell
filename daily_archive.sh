#!/bin/bash

# 首先判断输入参数个数是否为1
if [ $# -ne 1  ]
then
	echo "输入参数个数错误"
	exit
fi

# 从参数中获取目录名称
if [ -d $1 ]
then
	echo
else
	echo
	echo "目录不存在"
	echo
	exit
fi

DIR_NAME=$(basename $1)
DIR_PATH=$(cd $(dirname $1); pwd)

# 获取当前日期
DATE=$(date +%y%m%d)

# 定义生成的归档文件名称
FILE=archive_${DIR_NAME}_$DATE.tar.gz
DEST=/home/jaime/archive/$FILE

# 开始归档目录文件

echo "开始归档..."
echo

tar -czf $DEST $DIR_PATH/$DIR_NAME

if [ $? -eq 0 ]
then
	echo
	echo "归档成功"
	echo "归档文件为：$DEST"
	echo
else
	echo "归档出现问题"
fi

exit

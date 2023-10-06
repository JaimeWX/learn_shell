#!/bin/bash

# 查看用户是否登录
login_user=$(who | grep -i -m 1 $1 | awk '{print $1}') # -i 忽略大小写 -m maxcount（只拿第一行）

if [ -z $login_user ] # -z 判断字符串是否为空
then
	echo "$1不在线"
	echo "脚本退出"
	exit
fi

# 查看用户是否开启消息功能
is_allowed=$(who -T | grep -i -m 1 $1 | awk '{print $2}') # -i 忽略大小写 -m maxcount（只拿第一行）

if [ $is_allowed != "+" ] 
then
	echo "$1 没有开启消息功能"
	echo "脚本退出"
	exit
fi


# 确认是否有消息发送
if [ -z $2 ] 
then
	echo "没有消息发送"
	echo "脚本退出"
	exit
fi

# 从参数中获取要发送的消息
whole_msg=$(echo $* | cut " " -f 2-)

# 获取用户登录的终端
user_terminal=$(who | grep -i -m 1 $1 | awk '{print $2}')

# 写入要发送的消息
echo whole_msg | write $login_user $user_terminal

if [ $? != 0 ]
then 
	echo "发送失败"
else
	echo "发送成功"
fi

exit



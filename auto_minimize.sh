#!/usr/bin/env bash

for arg in $*
do
	i=1
	# 防止开机自启时当前程序先于要关闭的程序
	# 定时器防止一直找不到程序进入死循环(等待1分钟)
	until [ -n "$window_id" -o $i -gt 20 ]
	do
		window_id=`xdotool search --name $arg`
		echo $i
		sleep 3
		((i++))
	done

	if [ -z "$window_id" ]
	then
		exit
	fi

	id_list=(${window_id//\n/ })

	for i in ${id_list[@]}
	do
		xdotool windowclose $i
	done
done

#!/bin/bash
echo "select plugin to install"
echo "1 peda"
echo "2 gef"
echo "3 gdbgui"
read -t 10 -n 1 -p "请选择安装插件，他们是互斥的" select
if [ $select -eq 1 ];then
	echo "source ~/iot/tools/peda/peda.py">>~/.gdbinit
	echo "ojbk"
elif [ $select -eq 2 ];then
	wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
	echo "ojbk"
elif [ $select -eq 3 ];then
	pip install gdbgui
	echo "ojbk"
else
	echo "illegal options"
fi

#!/bin/bash
#不涉及sudo以及su的root操作
SELFDIR = $(dirname"$0")

#切换到脚本所在的目录
cd "$SELFDIR"

#初始化vim配置
echo"配置vim..."
cp -R HOME_vim ~/.vim
cp vimrc ~/.vimrc
echo"vim配置成功！"

#复制bash配置文件
echo"配置bash..."
cp profile ~/.profile
cp bashrc ~/. bahsrc
echo"bahs配置成功"

#初始化nano配置
echo"初始化nano"
cp nanorc ~/.nanorc
echo"初始化nano成功"

#创建目录
echo"创建目录.."
DIRLIST = "bin c sh tmp"
for d in $DIRLIST ; do

cd

	if [ ! -d "$d" ] ; then
		mkdir "$d"
	fi
done


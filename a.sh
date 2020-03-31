#!/bin/bash
#不涉及sudo以及su的root操作
SELFDIR = $(dirname"$0")

#切换到脚本所在的目录
cd "$SELFDIR"

#初始化vim配置
cp -R HOME_vim ~/.vim
cp vimrc ~/.vimrc

#复制bash配置文件
cp profile ~/.profile
cp bashrc ~/. bahsrc

#初始化nano配置
cp nanorc ~/.nanorc

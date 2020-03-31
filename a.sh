#!/bin/bash
#不涉及sudo以及su的root操作
SELFDIR = $(dirname"$0")

#切换到脚本所在的目录
cd "$SELFDIR"

#初始化vim配置
cp -R HOME_vim ~./vim
cp vimrc ~/.vimrc


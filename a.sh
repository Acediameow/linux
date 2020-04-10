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

#并没有进行自动让bash配置文件生效的操作
#去掉以下两行注释可以自动加载bash文件
# . ~/.profile
# . ~/.bashrc

#复制bash文件
echo '更新bash配置文件'
cp profile ~/.profile
cp bashrc ~./bashrc

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

#如果主目录存在mysh目录，则只复制其中的内容到mysh，否则复制整个mysh目录到主目录
cd $SELFDIR
if [-d "$HOME/mysh ] ; then
	cp -R mysh/* $HOME/mysh/
else
	cp -R mysh $HOME/
fi


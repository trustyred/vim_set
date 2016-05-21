#!/bin/bash

STR="set tabstop=4\n
set softtabstop=4\n
set shiftwidth=4\n
set autoindent\n
set cindent\n"

find /etc -name 'vimrc' | grep '[v][i][m][r][c]' > vim_path	#5月21日修改，但是有bug，如果已经存在vim_path这个文件就会出问题

PATH=$(cat vim_path)
rm -rf vim_path
echo -e $STR >> $PATH

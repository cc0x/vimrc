#!/usr/bin/env sh

set -e

cd ~/.cuncon-vimrc

# backup the user vimrc
[ -f ~/.vimrc ] && cp ~/.vimrc ~/.vimrc.bak

echo 'set runtimepath+=~/.cuncon-vimrc

source ~/.cuncon-vimrc/vimrcs/basic.vim
source ~/.cuncon-vimrc/vimrcs/filetypes.vim
source ~/.cuncon-vimrc/vimrcs/plugins_config.vim
source ~/.cuncon-vimrc/vimrcs/extended.vim

try
source ~/.cuncon-vimrc/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Cuncon Vim configuration successfully! Enjoy :-)"

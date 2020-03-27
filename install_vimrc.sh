#!/usr/bin/env sh

set -e

cd ~/.cc-vimrc

[ -f ~/.vimrc ] && cp ~/.vimrc ~/.vimrc.bak

echo 'set runtimepath+=~/.cc-vimrc

source ~/.cc-vimrc/vimrcs/basic.vim
source ~/.cc-vimrc/vimrcs/filetypes.vim
source ~/.cc-vimrc/vimrcs/plugins_config.vim
source ~/.cc-vimrc/vimrcs/extended.vim

try
source ~/.cc-vimrc/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully! Enjoy :-)"

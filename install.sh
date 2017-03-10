#!/bin/bash

echo Pulling Vundle as plugin manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo Install color scheme and snippets
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/snippets
cp colors/atom-dark-256.vim ~/.vim/colors/
cp snippets/php.snippets ~/.vim/snippets/

echo Backup old .vimrc
mv ~/.vimrc ~/.vimrc.old

echo Install new .vimrc
cp .vimrc ~/.vimrc

echo Install plugins
vim +PluginInstall +qall

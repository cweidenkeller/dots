#!/usr/bin/env sh
DIR=`pwd`
rm -rf ~/.vimrc
rm -rf ~/.gitconfig
rm -rf ~/.vim
cp -r $DIR/.vimrc ~/
cp -r $DIR/.gitconfig ~/
cp -r $DIR/.vim ~/

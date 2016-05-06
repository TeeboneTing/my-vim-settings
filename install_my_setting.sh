#/bin/bash

cp vimrc ~/.vimrc
# Need to check whether ~/.vim exist first
cp -r vim/ ~/
rm -rf ~/.vim
mv ~/vim/ ~/.vim

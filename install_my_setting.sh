#/bin/bash

echo "Copy vimrc into your home directory..."
cp vimrc ~/.vimrc
echo "Copy screenrc into your home directory..."
cp screenrc ~/.screenrc
# Need to check whether ~/.vim exist first
echo "Copy .vim/ dir to your home directory..."
cp -r vim/ ~/
rm -rf ~/.vim
mv ~/vim/ ~/.vim
echo "Copy my bashrc setting into your home directory..."
cp bashrc ~/.bashrc
echo "Finished!"

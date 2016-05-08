#!/bin/bash

set -e

## Install oh my zsh
sudo apt-get install zsh git-core -y

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

# sudo shutdown -r 0

## Install Powerline Tool in Linux
sudo apt-get install git python-pip -y

sudo pip install git+git://github.com/Lokaltog/powerline

sudo wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
sudo wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

# on server this folder does not exist
mkdir -p /usr/share/fonts
sudo mv PowerlineSymbols.otf /usr/share/fonts/

# fails on server
# sudo fc-cache -vf /usr/share/fonts/

sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

# set agnoster theme
cp .zshrc ~/.zshrc

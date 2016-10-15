#!/usr/bin/env bash

apt update

apt install -y git

rm -fr ~/.vim
rm ~/.vimrc
git clone https://github.com/bogdanvlviv/dotvim.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
cd -

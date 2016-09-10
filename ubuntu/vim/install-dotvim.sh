#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git

git clone https://github.com/bogdanvlviv/dotvim.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
cd -

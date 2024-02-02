#!/usr/bin/env bash

source "ubuntu/git/install-git.sh"

sudo apt install -y build-essential

rm -fr /tmp/vim
git clone https://github.com/vim/vim.git /tmp/vim
make -C /tmp/vim
sudo make install -C /tmp/vim

rm -fr /tmp/vim

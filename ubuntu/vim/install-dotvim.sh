#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

rm -fr ~/.vim
rm ~/.vimrc
git clone https://github.com/bogdanvlviv/dotvim.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
git submodule foreach --recursive 'git pull origin master'
ln -s bundle/vim-pathogen/autoload/ ./
cd -

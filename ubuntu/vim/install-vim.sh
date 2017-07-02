#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

apt-get install -y build-essential

git clone https://github.com/vim/vim.git /tmp/vim
make -C /tmp/vim
make install -C /tmp/vim

rm -fr /tmp/vim

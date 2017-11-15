#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

apt install -y automake
apt install -y build-essential
apt install -y pkg-config
apt install -y libevent-dev
apt install -y libncurses5-dev

rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
make install
cd -

rm -fr /tmp/tmux

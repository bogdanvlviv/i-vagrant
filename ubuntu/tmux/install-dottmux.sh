#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

rm -fr ~/.tmux
rm ~/.tmux.conf
git clone https://github.com/bogdanvlviv/dottmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/

#!/usr/bin/env bash

apt update

apt install -y git

rm -fr ~/.tmux
rm ~/.tmux.conf
git clone https://github.com/bogdanvlviv/dottmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/

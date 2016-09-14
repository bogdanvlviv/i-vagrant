#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git

rm -fr ~/.tmux
git clone https://github.com/bogdanvlviv/dottmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/

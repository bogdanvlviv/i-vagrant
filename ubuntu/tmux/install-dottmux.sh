#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

sudo apt-get install -y git

rm -fr ~/.tmux
rm ~/.tmux.conf
git clone https://github.com/bogdanvlviv/dottmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/

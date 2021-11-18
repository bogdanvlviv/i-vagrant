#!/usr/bin/env bash

sudo apt install -y libtinfo5
sudo apt install -y libaio1

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add mysql
asdf plugin update mysql
asdf install mysql $1
asdf global mysql $1

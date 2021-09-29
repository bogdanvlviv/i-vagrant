#!/usr/bin/env bash

sudo apt install -y autoconf
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y build-essential

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add redis
asdf plugin update redis
asdf install redis $1
asdf global redis $1

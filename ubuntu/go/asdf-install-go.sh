#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add golang
asdf plugin update golang
asdf install golang $1
asdf global golang $1

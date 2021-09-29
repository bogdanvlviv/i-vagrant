#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add nodejs
asdf plugin update nodejs
asdf install nodejs $1
asdf global nodejs $1

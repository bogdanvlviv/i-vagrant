#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add sqlite
asdf plugin update sqlite
asdf install sqlite $1
asdf global sqlite $1

sudo apt install -y libsqlite3-dev

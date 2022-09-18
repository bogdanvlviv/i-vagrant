#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

sudo apt update

sudo apt install -y autoconf
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y build-essential
sudo apt install -y libssl-dev
sudo apt install -y libreadline-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y uuid-dev

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add postgres
asdf plugin update postgres
asdf install postgres $1
asdf global postgres $1

sudo apt install -y libpq-dev

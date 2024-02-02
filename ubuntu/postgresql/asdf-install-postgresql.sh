#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

sudo apt install -y build-essential
sudo apt install -y libssl-dev
sudo apt install -y libreadline-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y uuid-dev
sudo apt install -y icu-devtools
sudo apt install -y libicu-dev

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add postgres
asdf plugin update postgres
asdf install postgres $1
asdf global postgres $1

sudo apt install -y libpq-dev

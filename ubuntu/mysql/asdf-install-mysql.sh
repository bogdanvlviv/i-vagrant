#!/usr/bin/env bash

sudo apt update

sudo apt install -y libtinfo5
sudo apt install -y libaio1

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add mysql
asdf plugin update mysql
asdf install mysql $1
asdf global mysql $1

sudo apt install -y libmysqlclient-dev

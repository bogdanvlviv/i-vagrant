#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

sudo apt install -y libtinfo5
sudo apt install -y libaio1
sudo apt install -y libncurses5
sudo apt install -y numactl

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add mysql
asdf plugin update mysql
asdf install mysql $1
asdf global mysql $1

sudo apt install -y libmysqlclient-dev

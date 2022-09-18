#!/usr/bin/env bash

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add golang
asdf plugin update golang
asdf install golang $1
asdf global golang $1

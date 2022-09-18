#!/usr/bin/env bash

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin add yarn
asdf plugin update yarn
asdf install yarn $1
asdf global yarn $1

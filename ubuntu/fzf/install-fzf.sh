#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

sudo apt-get install -y git

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

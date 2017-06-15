#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

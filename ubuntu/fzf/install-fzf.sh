#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

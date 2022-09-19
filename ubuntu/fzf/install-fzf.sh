#!/usr/bin/env bash

source "ubuntu/git/install-git.sh"

source "ubuntu/curl/install-curl.sh"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

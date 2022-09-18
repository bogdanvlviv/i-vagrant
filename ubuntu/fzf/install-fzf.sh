#!/usr/bin/env bash

bash "ubuntu/git/install-git.sh"

bash "ubuntu/curl/install-curl.sh"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

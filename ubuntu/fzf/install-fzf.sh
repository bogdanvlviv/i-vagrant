#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

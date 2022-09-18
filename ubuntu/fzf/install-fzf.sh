#!/usr/bin/env bash

bash "ubuntu/git/install-git.sh"

bash "ubuntu/curl/install-curl.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.fzf/
fi

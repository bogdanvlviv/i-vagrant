#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

sed -i "1iexport TERM=\"xterm-256color\"\n" ~/.bashrc

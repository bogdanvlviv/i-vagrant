#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

sed -i "1iexport FZF_DEFAULT_COMMAND='ag --hidden -g \"\"'\n" ~/.bashrc

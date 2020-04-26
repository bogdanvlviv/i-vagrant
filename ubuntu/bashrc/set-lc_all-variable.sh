#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

sed -i "1iexport LC_ALL=\"en_US.UTF-8\"\n" ~/.bashrc

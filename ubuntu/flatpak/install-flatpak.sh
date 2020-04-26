#!/usr/bin/env bash

apt update

apt install -y flatpak

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

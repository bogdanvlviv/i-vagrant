#!/usr/bin/env bash

sudo apt update

sudo apt install -y flatpak

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

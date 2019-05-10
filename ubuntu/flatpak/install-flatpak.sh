#!/usr/bin/env bash

apt update

add-apt-repository -y ppa:alexlarsson/flatpak

apt update

apt install -y flatpak-builder

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

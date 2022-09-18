#!/usr/bin/env bash

bash "ubuntu/flatpak/install-flatpak.sh"

sudo flatpak install -y flathub com.visualstudio.code

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

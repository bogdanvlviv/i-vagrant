#!/usr/bin/env bash

apt update

# "ubuntu/flatpak/install-flatpak.sh"
add-apt-repository -y ppa:alexlarsson/flatpak

apt update

apt install -y flatpak-builder

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi
# "ubuntu/flatpak/install-flatpak.sh"

flatpak install -y flathub us.zoom.Zoom

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

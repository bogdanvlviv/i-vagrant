#!/usr/bin/env bash

apt update

# "ubuntu/flatpak/install-flatpak.sh"
apt install -y flatpak

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi
# "ubuntu/flatpak/install-flatpak.sh"

flatpak install -y --from https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

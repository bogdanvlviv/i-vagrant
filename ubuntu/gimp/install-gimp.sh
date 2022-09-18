#!/usr/bin/env bash

bash "ubuntu/flatpak/install-flatpak.sh"

sudo flatpak install -y --from https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.local/share/flatpak/
fi

#!/usr/bin/env bash

apt update

# "ubuntu/flatpak/install-flatpak.sh"
add-apt-repository -y ppa:alexlarsson/flatpak

apt update

apt install -y flatpak-builder
# "ubuntu/flatpak/install-flatpak.sh"

flatpak install -y flathub io.atom.Atom

#!/usr/bin/env bash

bash "ubuntu/flatpak/install-flatpak.sh"

sudo flatpak install -y --from https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref

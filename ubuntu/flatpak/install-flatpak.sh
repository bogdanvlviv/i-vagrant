#!/usr/bin/env bash

sudo apt update

sudo apt install -y flatpak

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

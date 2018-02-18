#!/usr/bin/env bash

apt update

add-apt-repository -y ppa:alexlarsson/flatpak

apt update

apt install -y flatpak-builder

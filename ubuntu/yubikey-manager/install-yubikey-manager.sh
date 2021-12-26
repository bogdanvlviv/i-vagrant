#!/usr/bin/env bash

apt update

apt-add-repository -y ppa:yubico/stable

apt update

apt install -y yubikey-manager

#!/usr/bin/env bash

apt update

add-apt-repository -y ppa:git-core/ppa

apt update

apt install -y git

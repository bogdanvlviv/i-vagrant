#!/usr/bin/env bash

apt update

add-apt-repository -y ppa:maarten-baert/simplescreenrecorder

apt update

apt install -y simplescreenrecorder

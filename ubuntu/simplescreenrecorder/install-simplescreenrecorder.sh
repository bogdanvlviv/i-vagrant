#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

add-apt-repository -y ppa:maarten-baert/simplescreenrecorder

apt update

apt install -y simplescreenrecorder

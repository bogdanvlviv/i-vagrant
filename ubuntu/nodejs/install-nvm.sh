#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

apt-get install -y curl

curl -o- https://raw.githubusercontent.com/creationix/nvm/v$1/install.sh | bash

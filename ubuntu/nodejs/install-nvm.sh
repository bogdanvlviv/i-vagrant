#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

bash "ubuntu/curl/install-curl.sh"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v$1/install.sh | bash

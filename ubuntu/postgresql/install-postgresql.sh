#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

bash "ubuntu/curl/install-curl.sh"

touch /etc/apt/sources.list.d/pgdg.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ $2-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list > /dev/null
curl -sL https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt-get update

apt-get install -y postgresql-$1

shift 2

if (( $# )); then
  apt-get install -y $@
fi

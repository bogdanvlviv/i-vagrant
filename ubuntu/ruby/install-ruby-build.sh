#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

rm -fr ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
~/.rbenv/plugins/ruby-build/install.sh

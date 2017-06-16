#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
apt-get install -y exuberant-ctags
# "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

rm -fr ~/.rbenv/plugins/rbenv-ctags
git clone git://github.com/tpope/rbenv-ctags.git ~/.rbenv/plugins/rbenv-ctags

#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
apt install -y exuberant-ctags
# "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

rm -fr ~/.rbenv/plugins/rbenv-ctags
git clone git://github.com/tpope/rbenv-ctags.git ~/.rbenv/plugins/rbenv-ctags

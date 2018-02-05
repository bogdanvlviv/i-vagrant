#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

rm -fr ~/.pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

sed -i "1ieval \"\$(pyenv init -)\"\n" ~/.bashrc
sed -i "1iexport PATH=\"\$PYENV_ROOT/bin:\$PATH\"" ~/.bashrc
sed -i "1iexport PYENV_ROOT=\"\$HOME/.pyenv\"" ~/.bashrc

# If you have problems with permissions, run
# sudo chown -R username:username ~/.pyenv/

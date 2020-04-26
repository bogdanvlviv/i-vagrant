#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

rm -fr ~/.pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

sed -i "1ieval \"\$(pyenv init -)\"\n" ~/.bashrc
sed -i "1iexport PATH=\"\$PYENV_ROOT/bin:\$PATH\"" ~/.bashrc
sed -i "1iexport PYENV_ROOT=\"\$HOME/.pyenv\"" ~/.bashrc

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.pyenv/
fi

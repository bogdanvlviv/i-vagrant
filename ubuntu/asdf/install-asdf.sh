#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

rm -fr ~/.asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout $1
cd -

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

sed -i "1isource \$HOME/.asdf/completions/asdf.bash\n" ~/.bashrc
sed -i "1isource \$HOME/.asdf/asdf.sh" ~/.bashrc

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.asdf/
fi
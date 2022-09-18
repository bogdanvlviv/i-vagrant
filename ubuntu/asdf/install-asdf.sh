#!/usr/bin/env bash

bash "ubuntu/git/install-git.sh"

bash "ubuntu/curl/install-curl.sh"

rm -fr ~/.asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout $1
cd -

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

sed -i "1isource \$HOME/.asdf/completions/asdf.bash\n" ~/.bashrc
sed -i "1isource \$HOME/.asdf/asdf.sh" ~/.bashrc

#!/usr/bin/env bash

source "ubuntu/git/install-git.sh"

source "ubuntu/curl/install-curl.sh"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout $1
cd -

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

sed -i "1iexport ASDF_FORCE_PREPEND=\"yes\"\nsource \"\$HOME/.asdf/asdf.sh\"\nsource \"\$HOME/.asdf/completions/asdf.bash\"\n" ~/.bashrc

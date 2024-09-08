source "ubuntu/git/install.sh"

source "ubuntu/curl/install.sh"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes y | ~/.fzf/install

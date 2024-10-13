source "ubuntu/git/install.sh"

source "ubuntu/curl/install.sh"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout $1
cd -

export ASDF_FORCE_PREPEND="yes"
source "$HOME/.asdf/asdf.sh"
source "$HOME/.asdf/completions/asdf.bash"

sed -i "1iexport ASDF_FORCE_PREPEND=\"yes\"\nsource \"\$HOME/.asdf/asdf.sh\"\nsource \"\$HOME/.asdf/completions/asdf.bash\"\n" ~/.bashrc

source "ubuntu/curl/install.sh"

sudo apt install -y build-essential
sudo apt install -y libssl-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libbz2-dev
sudo apt install -y libreadline-dev
sudo apt install -y libsqlite3-dev
sudo apt install -y libncursesw5-dev
sudo apt install -y xz-utils
sudo apt install -y tk-dev
sudo apt install -y libxml2-dev
sudo apt install -y libxmlsec1-dev
sudo apt install -y libffi-dev
sudo apt install -y liblzma-dev

asdf plugin add python
asdf plugin update python
asdf install python $1
asdf global python $1

shift 1

if (( $# )); then
  pip install $@
fi

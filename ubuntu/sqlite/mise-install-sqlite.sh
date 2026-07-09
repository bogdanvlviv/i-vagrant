source "ubuntu/curl/install.sh"

# https://github.com/mise-plugins/mise-sqlite#requirements
sudo apt install -y build-essential
sudo apt install -y file

mise use --global sqlite@$1
mise reshim

sudo apt install -y libsqlite3-dev

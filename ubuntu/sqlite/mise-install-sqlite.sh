source "ubuntu/curl/install.sh"

sudo apt install -y build-essential
sudo apt install -y file

mise use --global sqlite@$1
mise reshim

sudo apt install -y libsqlite3-dev

source "ubuntu/curl/install.sh"

sudo apt install -y build-essential
sudo apt install -y file

asdf plugin add sqlite
asdf plugin update sqlite
asdf install sqlite $1
asdf global sqlite $1

sudo apt install -y libsqlite3-dev

source "ubuntu/curl/install.sh"

# https://github.com/mise-plugins/mise-postgres#ubuntu
sudo apt install -y bison
sudo apt install -y flex
sudo apt install -y build-essential
sudo apt install -y libssl-dev
sudo apt install -y libreadline-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y uuid-dev
sudo apt install -y icu-devtools
sudo apt install -y libicu-dev

mise use --global postgres@$1
mise reshim

sudo apt install -y libpq-dev

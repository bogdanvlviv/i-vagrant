sudo apt update

sudo apt install -y autoconf
sudo apt install -y patch
sudo apt install -y build-essential
sudo apt install -y rustc
sudo apt install -y libssl-dev
sudo apt install -y libyaml-dev
sudo apt install -y libreadline-dev
sudo apt install -y zlib1g-dev
sudo apt install -y libgmp-dev
sudo apt install -y libncurses5-dev
sudo apt install -y libffi-dev
sudo apt install -y libgdbm6
sudo apt install -y libgdbm-dev
sudo apt install -y libdb-dev
sudo apt install -y uuid-dev

asdf plugin add ruby
asdf plugin update ruby
asdf install ruby $1
asdf global ruby $1

shift 1

if (( $# )); then
  gem install $@
fi

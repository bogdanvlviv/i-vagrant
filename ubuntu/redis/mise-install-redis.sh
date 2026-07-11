sudo apt update

# https://github.com/mise-plugins/mise-redis#dependencies
sudo apt install -y build-essential

mise use --global redis@$1
mise reshim

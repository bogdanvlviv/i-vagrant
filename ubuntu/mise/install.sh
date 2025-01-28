source "ubuntu/curl/install.sh"

sudo apt update

sudo apt install -y gnupg2
sudo apt install -y ca-certificates
sudo apt install -y lsb-release
sudo apt install -y ubuntu-keyring

curl https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg > /dev/null

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list

sudo apt update

sudo apt install -y mise

eval "$(mise activate bash --shims)"

sed -i "1ieval \"$\(mise activate bash --shims\)\"\n" ~/.bashrc

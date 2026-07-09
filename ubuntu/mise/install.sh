sudo apt update

# https://mise.jdx.dev/installing-mise.html#apt
sudo add-apt-repository -y ppa:jdxcode/mise
sudo apt update
sudo apt install -y mise

# https://mise.jdx.dev/installing-mise.html#bash
eval "$(mise activate bash --shims)"
sed -i "1ieval \"$\(mise activate bash --shims\)\"\n" ~/.bashrc

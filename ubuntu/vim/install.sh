source "ubuntu/git/install.sh"

sudo apt install -y build-essential

git clone https://github.com/vim/vim.git /tmp/vim
make -C /tmp/vim
sudo make install -C /tmp/vim

rm -fr /tmp/vim

source "ubuntu/git/install.sh"

sudo apt update

sudo apt install -y automake
sudo apt install -y bison
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev

git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
git checkout $1
sh autogen.sh
./configure && make
sudo make install
cd -

rm -fr /tmp/tmux

sudo apt update

sudo apt install -y build-essential

sudo make -C /usr/share/doc/git/contrib/diff-highlight

sudo cp /usr/share/doc/git/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight
sudo chmod 755 /usr/local/bin/diff-highlight

source "ubuntu/git/install.sh"

git clone https://gitlab.com/bogdanvlviv/dottmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/
cd ~/.tmux
git remote add github git@github.com:bogdanvlviv/dottmux.git
git remote add gitlab git@gitlab.com:bogdanvlviv/dottmux.git
cd -

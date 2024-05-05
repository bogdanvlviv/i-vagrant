source "ubuntu/git/install.sh"

git clone https://gitlab.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
xrdb ~/.Xresources
cd ~/.X
git remote add github git@github.com:bogdanvlviv/dotX.git
git remote add gitlab git@gitlab.com:bogdanvlviv/dotX.git
cd -

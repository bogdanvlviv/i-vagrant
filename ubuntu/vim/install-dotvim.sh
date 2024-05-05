source "ubuntu/git/install.sh"

git clone https://gitlab.com/bogdanvlviv/dotvim.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
git submodule foreach --recursive 'git pull origin master'
ln -s bundle/vim-pathogen/autoload/ ./
git remote add github git@github.com:bogdanvlviv/dotvim.git
git remote add gitlab git@gitlab.com:bogdanvlviv/dotvim.git
cd -

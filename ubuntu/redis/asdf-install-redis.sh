sudo apt update

sudo apt install -y build-essential

asdf plugin add redis
asdf plugin update redis
asdf install redis $1
asdf global redis $1

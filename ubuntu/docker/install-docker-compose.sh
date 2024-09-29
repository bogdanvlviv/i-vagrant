source "ubuntu/curl/install.sh"

sudo curl -L https://github.com/docker/compose/releases/download/$1/docker-compose-linux-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod 755 /usr/local/bin/docker-compose

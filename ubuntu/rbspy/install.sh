source "ubuntu/curl/install.sh"

curl -L https://github.com/rbspy/rbspy/releases/download/$1/rbspy-x86_64-unknown-linux-musl.tar.gz -o /tmp/rbspy.tar.gz
tar xvzf /tmp/rbspy.tar.gz -C /tmp
sudo cp /tmp/rbspy-x86_64-unknown-linux-musl /usr/local/bin/rbspy
rm /tmp/rbspy.tar.gz
rm /tmp/rbspy-x86_64-unknown-linux-musl

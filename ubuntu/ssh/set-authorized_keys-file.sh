mkdir -p ~/.ssh

chmod 700 ~/.ssh

cat <<EOF | tee ~/.ssh/authorized_keys > /dev/null
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIlu1vxetVEKpT9l1eC9DAkdSRUK/XyTPWxMPTv5lFLn bogdanvlviv@gmail.com
EOF

chmod 600 ~/.ssh/authorized_keys

sudo /etc/init.d/ssh restart

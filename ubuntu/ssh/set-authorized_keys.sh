#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

mkdir -p ~/.ssh

chmod 700 ~/.ssh

cat <<EOF | tee ~/.ssh/authorized_keys > /dev/null
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjfsK7Uvp8ZtGcb+PDPfzwGvjZYr7PKYo3vrUTsjZkqCXP6sLgsddQbRFEWls9ikuYftquYVmHQ8XYAmJMNNdhKnYdOPZpqkgUn2XViwE4vlNidsnf+X/snz/EhbFLe6tliCurO4IOomxh+vKfcaH7xMwFiX76mXCVLTcwu/d+3oGuPdGJ/+CmZVffHQn6iiyDpGlt43OkyFKPUcFRPXXixkAKXCZTJRelorIyBn87dLgnxFVFhX5eqIWfAdJl/r2Pm+R54aYJnBOkSKOn9ANAVS9BLJgv50RpRyGBemTFWLWZ3BeUXKf34j2hRtaVSA08lQDSzkl4HBsHUL0/xPdd bogdanvlviv@gmail.com
EOF

chmod 600 ~/.ssh/authorized_keys

sudo /etc/init.d/ssh restart

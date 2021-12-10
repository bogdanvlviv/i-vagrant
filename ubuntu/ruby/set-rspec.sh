#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

cat <<EOF | tee ~/.rspec > /dev/null
--format documentation
EOF

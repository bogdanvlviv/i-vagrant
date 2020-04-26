#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

cat <<EOF | tee ~/.ctags > /dev/null
--exclude=node_modules
EOF

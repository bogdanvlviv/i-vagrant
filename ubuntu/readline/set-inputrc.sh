#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

cat <<EOF | tee ~/.inputrc > /dev/null
set editing-mode vi
EOF

#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

cat <<EOF | tee ~/.psqlrc > /dev/null
\setenv LESS -S
EOF

#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

sed -i "1ialias xclippaste=\"xclip -out -selection clipboard\"\n" ~/.bashrc
sed -i "1ialias xclipcopy=\"xclip -in -selection clipboard\"" ~/.bashrc

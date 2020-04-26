#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

sed -i "1ialias vi=\"vim\"\n" ~/.bashrc
sed -i "1iexport EDITOR=\"vim\"" ~/.bashrc

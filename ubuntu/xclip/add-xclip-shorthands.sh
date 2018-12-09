#!/usr/bin/env bash

sed -i "1ialias xclippaste=\"xclip -out -selection clipboard\"\n" ~/.bashrc
sed -i "1ialias xclipcopy=\"xclip -in -selection clipboard\"" ~/.bashrc

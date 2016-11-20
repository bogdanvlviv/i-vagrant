#!/usr/bin/env bash

sed -i "1iexport FZF_DEFAULT_COMMAND='ag --hidden --ignore-dir .git -g \"\"'\n" ~/.bashrc

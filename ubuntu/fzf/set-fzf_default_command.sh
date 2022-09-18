#!/usr/bin/env bash

sed -i "1iexport FZF_DEFAULT_COMMAND='ag --all-types --follow --hidden -g \"\"'\n" ~/.bashrc

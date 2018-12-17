#!/usr/bin/env bash

sed -i "1iexport FZF_DEFAULT_COMMAND='ag --unrestricted -g \"\"'\n" ~/.bashrc

#!/usr/bin/env bash

sed -i "1iexport LC_ALL=\"en_US.UTF-8\"\n" ~/.bashrc

source "$HOME/.bashrc"

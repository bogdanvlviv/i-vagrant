#!/usr/bin/env bash

sed -i "1iexport EDITOR=\"vim\"\n" ~/.bashrc

source "$HOME/.bashrc"

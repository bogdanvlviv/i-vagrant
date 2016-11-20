#!/usr/bin/env bash

echo "export FZF_DEFAULT_COMMAND='ag --hidden --ignore-dir .git -g \"\"'" | tee -a ~/.bashrc > /dev/null

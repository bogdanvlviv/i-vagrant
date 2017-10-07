#!/usr/bin/env bash

echo "export FZF_DEFAULT_COMMAND='ag --unrestricted -g \"\"'" | tee -a ~/.bashrc > /dev/null

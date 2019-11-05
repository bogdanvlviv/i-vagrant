#!/usr/bin/env bash

if [[ "$SUDO_USER" ]]; then
  groupadd docker

  usermod -aG docker $SUDO_USER
fi

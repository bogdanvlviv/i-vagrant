#!/usr/bin/env bash

if [[ "$1" = "nodenv" ]]; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"

  nodenv install $2
  nodenv global $2

  nodenv rehash

  if [[ "$SUDO_USER" ]]; then
    chown -R $SUDO_USER:$SUDO_USER ~/.nodenv/
  fi
elif [[ "$1" = "nvm" ]]; then
  source "$HOME/.nvm/nvm.sh"

  nvm install $2

  nvm alias default $2
else
  echo "Need to set Node environment manager nodenv or nvm" >&2
  exit 1
fi

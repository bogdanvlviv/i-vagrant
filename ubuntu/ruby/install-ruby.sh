#!/usr/bin/env bash

if [[ "$1" = "rbenv" ]]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"

  rbenv install $2
  rbenv global $2

  shift 2

  if (( $# )); then
    gem install $@
  fi

  rbenv rehash
elif [[ "$1" = "rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm" || source "/etc/profile.d/rvm.sh"

  rvm use --default --install $2

  shift 2

  if (( $# )); then
    gem install $@
  fi

  rvm cleanup all
else
  echo "Need to set Ruby environment manager rbenv or rvm" >&2
  exit 1
fi

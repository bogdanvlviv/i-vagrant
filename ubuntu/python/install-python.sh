#!/usr/bin/env bash

apt install -y build-essential
apt install -y zlib1g-dev
apt install -y libreadline-dev
apt install -y libbz2-dev
apt install -y libsqlite3-dev
apt install -y libssl-dev

if [[ "$1" = "pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"

  pyenv install $2
  pyenv global $2

  shift 2

  if (( $# )); then
    pip install $@
  fi

  if [[ "$SUDO_USER" ]]; then
    chown -R $SUDO_USER:$SUDO_USER ~/.pyenv/
  fi
else
  echo "Need to set Python environment manager pyenv" >&2
  exit 1
fi

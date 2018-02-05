#!/usr/bin/env bash

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
else
  echo "Need to set Python environment manager pyenv" >&2
  exit 1
fi

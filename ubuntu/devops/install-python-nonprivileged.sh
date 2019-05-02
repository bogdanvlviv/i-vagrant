#!/bin/bash


if [[ "$1" = "pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  pyenv install "$2"
  pyenv global "$2"
  pyenv shell "$2"

  shift 2

  pip install --user --upgrade pip

  while (( $# )) ; do
    pip install --user "$@"
    shift
  done

else
  echo "Need to set Python environment manager pyenv" >&2
  exit 1
fi
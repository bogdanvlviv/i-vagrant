#!/usr/bin/env bash

npm install -g stylelint
npm install -g stylelint-config-standard

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

cat <<EOF | tee ~/.stylelintrc > /dev/null
{
  "extends": "stylelint-config-standard"
}
EOF

#!/usr/bin/env bash

npm install -g stylelint
npm install -g stylelint-config-standard

cat <<EOF | tee ~/.stylelintrc > /dev/null
{
  "extends": "stylelint-config-standard"
}
EOF

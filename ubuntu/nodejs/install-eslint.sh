#!/usr/bin/env bash

npm install -g eslint
npm install -g eslint-config-airbnb
npm install -g eslint-plugin-jsx-a11y
npm install -g eslint-plugin-react
npm install -g eslint-plugin-import

echo "{" | tee ~/.eslintrc > /dev/null
echo '  "extends": "airbnb"' | tee -a ~/.eslintrc > /dev/null
echo "}" | tee -a ~/.eslintrc > /dev/null

#!/bin/bash
# By Rafael Cerrejon (c)2017

echo "Starting Boilerplate for your App"

# .eslintrc
if [ -e .eslintrc ]
then
    rm .eslintrc
fi
cat << EOF >> .eslintrc
{
  extends: "rallycoding",
  rules: {
    "arrow-body-style": 0,
    "global-require": 0
  },
  "globals": {
    "fetch": false
  }
}
EOF
echo ".eslint created succesfully"

# create folder tree
mkdir src
mkdir src/assets && mkdir src/components
echo "folder tree created succesfully"

# install packages
npm install -D eslint@^3.19.0
npm install -D eslint-config-rallycoding
npm install -D flow-bin

echo "3 packages installed"
echo "Thanks for use this Script!"

#!/bin/bash
# By Rafael Cerrejon (c)2017

projectName=${PWD##*/}
echo "Starting Boilerplate for ${projectName}"

# .eslintrc
if [ -e .eslintrc ]
then
    rm .eslintrc
fi
cat << 'EOF' >> .eslintrc
{
  extends: "rallycoding",
  rules: {
    arrow-body-style: 0
  },
  "globals": {
    "fetch": false
  }
}
EOF
echo ".eslint created succesfully"

# TODO: fix projectName variable
# index.ios.js
if [ -e index.ios.js ]
then
    rm index.ios.js
fi
cat << 'EOF' >> index.ios.js
//@flow
import { AppRegistry } from 'react-native';
import App from './src/App';

AppRegistry.registerComponent('projectName', () => App);
EOF
echo "index.ios.js changed succesfully"

# index.android.js
if [ -e index.android.js ]
then
    rm index.android.js
fi
cat << 'EOF' >> index.android.js
//@flow
import { AppRegistry } from 'react-native';
import App from './src/App';

AppRegistry.registerComponent('$projectName', () => App);
EOF
echo "index.android.js changed succesfully"

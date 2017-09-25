#!/bin/bash
# By Rafael Cerrejon (c)2017

read -p "Enter the Name of the App:" projectName
echo "Starting Boilerplate for ${projectName}"

# .eslintrc
if [ -e .eslintrc ]
then
    rm .eslintrc
fi
cat << EOF >> .eslintrc
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

# index.ios.js
if [ -e index.ios.js ]
then
    rm index.ios.js
fi
cat << EOF >> index.ios.js
//@flow
import { AppRegistry } from 'react-native';
import App from './src/App';

AppRegistry.registerComponent('${projectName}', () => App);

EOF
echo "index.ios.js changed succesfully"

# index.android.js
if [ -e index.android.js ]
then
    rm index.android.js
fi
cat << EOF >> index.android.js
//@flow
import { AppRegistry } from 'react-native';
import App from './src/App';

AppRegistry.registerComponent('${projectName}', () => App);
EOF
echo "index.android.js changed succesfully"

# create folder tree
mkdir src
mkdir src/assets && mkdir src/components
echo "folder tree created succesfully"

# create App.js
if [ -e src/App.js ]
then
    rm src/App.js
fi
cat << EOF >> src/App.js
// @flow
import React, { Component } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Platform
} from 'react-native';

// Main Class
class App extends Component {
  // Render Method
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          React Native Boilerplate Script
        </Text>
        <Text style={styles.instructions}>
          by Rafael Cerrejon - 2017 {"\n"}
          OS: {Platform.OS}
        </Text>
      </View>
    );
  }
}

// Style
const styles: StyleSheet = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

export default App;
EOF
echo "src/App.js created succesfully"

# install packages
npm install -D eslint@^3.19.0
npm install -D eslint-config-rallycoding
npm install -D flow-bin

echo "3 packages installed"
echo "Thanks for use this Script!"

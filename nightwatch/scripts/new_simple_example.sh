#!/usr/bin/env bash

set -x

TEST=`echo $PWD|rev |cut -d'/' -f1 |rev`

git checkout -b test/$TEST

set -ex

npm init -y

# Geckodriver (Firefox):
yarn add geckodriver

# Chromedriver
yarn add chromedriver

yarn add nightwatch

./node_modules/.bin/nightwatch node_modules/nightwatch/examples/tests/ecosia.js

#!/usr/bin/env bash

set -ex

cd nightwatch/nightwatch-helloworld
  yarn
  ./node_modules/.bin/nightwatch node_modules/nightwatch/examples/tests/ecosia.js

cd ../..
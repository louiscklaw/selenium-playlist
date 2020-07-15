#!/usr/bin/env bash

set -ex

# https://nightwatchjs.org/guide/running-tests/#nightwatch-runner

cd nightwatch-helloworld
  ./run.sh
cd ..

cd nightwatch-html-reporter-helloworld
  ./run.sh
cd ..

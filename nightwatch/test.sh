#!/usr/bin/env bash

set -ex

# https://nightwatchjs.org/guide/running-tests/#nightwatch-runner

cd nightwatch-helloworld
  ./run.sh
cd ..

cd nightwatch-html-reporter-helloworld
  ./run.sh
cd ..

cd nightwatch-chrome-helloworld
  ./run.sh
cd ..

cd nightwatch-parallel-run-helloworld
  ./run.sh
cd ..

cd nightwatch-runner-helloworld
  ./run.sh
cd ..

cd nightwatch-tags-helloworld
  ./run.sh
cd ..

cd nightwatch-pageobject-helloworld
  ./run.sh
cd ..
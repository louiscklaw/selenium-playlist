#!/usr/bin/env bash

set -ex

cd nightwatch-helloworld
  ./run.sh
cd ..

cd nightwatch-html-reporter-helloworld
  ./run.sh
cd ..

#!/usr/bin/env bash

set -ex

cd mocha-helloworld
  yarn test
cd ..

cd mochawesome-helloworld
  yarn test
cd ..
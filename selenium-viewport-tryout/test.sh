#!/usr/bin/env bash

set -ex

pushd screenshot
  rm -rf *.png
popd

pushd tests
  pipenv sync
  pipenv run python3 ./main.py
popd

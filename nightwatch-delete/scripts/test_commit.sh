#!/usr/bin/env bash

set -ex

./test.sh

git add .

git commit -m"commit after test,"

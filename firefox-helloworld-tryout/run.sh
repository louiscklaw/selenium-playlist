#!/usr/bin/env bash

set -ex

PATH=$PATH:/home/logic/_workspace/selenium-playlist/drivers/firefox/0.27.0

pipenv sync
pipenv run python3 ./test_firefox.py

#!/usr/bin/env bash

set -ex

PATH=$PATH:/home/logic/_workspace/selenium-playlist/drivers/chrome/85

pipenv sync
pipenv run python3 ./test_chrome.py

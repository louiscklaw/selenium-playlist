#!/usr/bin/env bash

set -ex

REPO_HOME=..
PATH=$PATH:$REPO_HOME/drivers/firefox/0.27.0

pipenv sync
pipenv run python3 ./test_firefox.py

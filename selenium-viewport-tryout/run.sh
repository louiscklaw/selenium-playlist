#!/usr/bin/env bash

set -ex

REPO_HOME=..
PATH=$PATH:$REPO_HOME/drivers/chrome/85

pipenv sync
pipenv run python3 ./main.py

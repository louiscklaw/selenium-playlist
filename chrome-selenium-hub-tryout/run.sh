#!/usr/bin/env bash

set -ex

# export CI=1
# export CI_TEST=1
# export GITHUB_REPOSITORY=$(GET_SHORT_REPOSITORY)

export REPO_HOME=..

PATH=$PATH:$REPO_HOME/drivers/chrome/85

pipenv sync
pipenv run python3 ./main.py

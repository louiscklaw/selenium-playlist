#!/usr/bin/env bash

set -ex

export CI=1
# export CI_TEST=1
# export GITHUB_REPOSITORY=$(GET_SHORT_REPOSITORY)

export PROJ_HOME=/home/logic/_workspace/selenium-playlist

PATH=$PATH:../drivers/chrome/85

# cd $PROJ_HOME/chrome-selenium-hub-tryout

# sudo apt update
# sudo apt install -y python3 python3-pip python3-dev python3-wheel python3-setuptools
# python3 -V
# python3 -m pip install pipenv

# export PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
# export PATH="$PATH:$PYTHON_BIN_PATH"

# export LC_ALL=C.UTF-8
# export LANG=C.UTF-8

pipenv sync
pipenv run python3 ./main.py

# cd $PROJ_HOME

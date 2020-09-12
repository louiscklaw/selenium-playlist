#!/usr/bin/env bash

set -ex

export PROJ_HOME=/home/logic/_workspace/selenium-playlist

PATH=$PATH:/home/logic/_workspace/selenium-playlist/drivers/chrome/85

cd $PROJ_HOME/docker-selenium-tryout

  pipenv run python3 ./main.py

cd $PROJ_HOME

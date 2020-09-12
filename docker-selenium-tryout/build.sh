#!/usr/bin/env bash

set -ex

export PROJ_HOME=/home/logic/_workspace/selenium-playlist

PATH=$PATH:/home/logic/_workspace/selenium-playlist/chrome-helloworld-tryout

cd $PROJ_HOME/_ref/docker-selenium
  docker-compose -f docker-compose-v3.yml pull
  docker-compose -f docker-compose-v3.yml up
cd $PROJ_HOME
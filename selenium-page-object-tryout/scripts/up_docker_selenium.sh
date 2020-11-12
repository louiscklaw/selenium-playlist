#!/usr/bin/env bash

set -ex

export SCRIPT_DIR=.
export PROJ_HOME=$SCRIPT_DIR/..
export REPO_HOME=$PROJ_HOME/..

PATH=$PATH:$REPO_HOME/chrome-helloworld-tryout

cd $REPO_HOME/_ref/docker-selenium
  docker-compose -f docker-compose-v3.yml pull
  docker-compose -f docker-compose-v3.yml up
cd $REPO_HOME

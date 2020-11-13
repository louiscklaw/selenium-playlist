#!/usr/bin/env bash

set -ex

export REPO_HOME=..

PATH=$PATH:$REPO_HOME/chrome-helloworld-tryout


cd $REPO_HOME/_ref/docker-selenium
  docker-compose -f docker-compose-v3.yml kill
  docker-compose -f docker-compose-v3.yml down
cd $REPO_HOME

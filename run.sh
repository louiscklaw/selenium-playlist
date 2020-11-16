#!/usr/bin/env bash

set -ex

# export CI=1
# export CI_TEST=1
# export GITHUB_REPOSITORY=$(GET_SHORT_REPOSITORY)

function shutdown {
    ./scripts/down_docker_selenium.sh
    echo "Shutdown complete"
}

trap shutdown SIGTERM SIGINT EXIT

# export REPO_HOME=..
# PATH=$PATH:$REPO_HOME/drivers/chrome/85

./scripts/up_docker_selenium.sh

echo 'sleep a while to let docker steady'
sleep 30

pipenv sync
pipenv run python3 ./main.py

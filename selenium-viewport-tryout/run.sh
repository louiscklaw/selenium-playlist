#!/usr/bin/env bash

set -ex

TMP_ORPHAN_BRANCH=$(mktemp -d)

function shutdown {
    # ./scripts/down_docker_selenium.sh
    # rm -rf $TMP_ORPHAN_BRANCH
    echo "Shutdown complete"
}

trap shutdown SIGTERM SIGINT EXIT

REPO_HOME=..
PATH=$PATH:$REPO_HOME/drivers/chrome/85

pushd src
  pipenv sync
  pipenv run python3 ./main.py
popd

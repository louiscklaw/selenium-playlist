#!/usr/bin/env bash

set -ex

docker run -d -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-firefox:4.0.0-alpha-7-prerelease-20201009

#!/usr/bin/env bash

set -ex

docker run -d --rm -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-chrome

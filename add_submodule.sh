#!/usr/bin/env bash

set -ex

git submodule update --init  --depth=1 https://github.com/SeleniumHQ/docker-selenium.git _ref/docker-selenium
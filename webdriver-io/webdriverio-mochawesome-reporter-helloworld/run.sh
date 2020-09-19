#!/usr/bin/env bash

set -ex

yarn

npx wdio wdio.conf.js

node webdriverio-mochawesome-reporter-helloworld/Results/wdio-0-0-mochawesome-reporter.log ./Results "wdio-mochawesome-*"
#!/usr/bin/env bash

set -ex

yarn

npx wdio wdio.conf.js

#!/usr/bin/env bash

set -x
rm -rf * .*

set -ex

TEST=`echo $PWD|rev |cut -d'/' -f1 |rev`

git checkout -b test/$TEST

rsync -avz --exclude 'node_modules' --exclude 'public' ../nightwatch-runner-helloworld/ .

yarn

yarn group_helloworlds
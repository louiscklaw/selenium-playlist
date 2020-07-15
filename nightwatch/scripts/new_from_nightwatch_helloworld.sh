#!/usr/bin/env bash

set -x
rm -rf * .*

TEST=`echo $PWD|rev |cut -d'/' -f1 |rev`

git checkout -b test/$TEST

set -ex

rsync -avz --exclude 'node_modules' --exclude 'public' ../nightwatch-helloworld/ .

yarn

yarn helloworld

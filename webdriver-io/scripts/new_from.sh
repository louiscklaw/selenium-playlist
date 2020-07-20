#!/usr/bin/env bash

set -x
rm -rf * .*

TEST=`echo $PWD|rev |cut -d'/' -f1 |rev`
git branch -D test/$TEST
git checkout -b test/$TEST

rsync -avh --progress --exclude 'node_modules' --exclude 'test' ../$1/ .

yarn add @wdio/cli --dev

npx wdio config -y

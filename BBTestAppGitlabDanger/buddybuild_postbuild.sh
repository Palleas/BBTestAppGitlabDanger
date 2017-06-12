#!/usr/bin/env bash

if [ -z "$BUDDYBUILD_PULL_REQUEST" ]
then
    cd ..
    bundle install
    bundle exec danger
fi

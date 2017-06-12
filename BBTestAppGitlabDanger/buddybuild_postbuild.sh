#!/usr/bin/env bash

echo "Checking for pull request : BUDDYBUILD_PULL_REQUEST=$BUDDYBUILD_PULL_REQUEST"
if [ "${BUDDYBUILD_PULL_REQUEST:-}" ]; then
    echo "Running danger"
    cd ..
    bundle install
    bundle exec danger
fi

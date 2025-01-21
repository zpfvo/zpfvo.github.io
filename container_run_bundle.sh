#!/bin/bash

# Define variables
IMAGE="ruby:3.4"
WORKDIR="/usr/src/app"
APP_DIR="$(pwd)"  # Current directory (project root)

# Run the container with the passed command
podman run --rm --privileged --net host \
  -v "$APP_DIR:$WORKDIR" \
  -w "$WORKDIR" \
  -e BUNDLE_PATH=vendor/bundle \
  ruby:3.4 bash -c "bundle install && bundle exec $*"

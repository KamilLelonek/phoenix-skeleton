#!/usr/bin/env bash
set -e

DOCKER_TAG=$(git rev-parse --short HEAD)
IMAGE=${DOCKER_REPO}/my-app:${DOCKER_TAG}

docker build \
  --tag $IMAGE .

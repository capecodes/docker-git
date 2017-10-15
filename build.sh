#!/bin/bash

set -e

GIT_PACKAGE_VERSION="$1"
IMAGE_VERSION="$2"

docker build --build-arg GIT_PACKAGE_VERSION=${GIT_PACKAGE_VERSION} -t capecodes/git:${IMAGE_VERSION} .
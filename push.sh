#!/bin/bash

set -e

IMAGE_TAG="$1"

docker push capecodes/git:${IMAGE_TAG}

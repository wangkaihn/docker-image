#!/bin/bash
#
# This script will build the executable and leave it in this directory.
#
# If the first argument to the script is set to "alpine", then it will
# build a binary for Alpine Linux.
#

IMAGE=yangxuan8282/golang:alpine
SRCDIR=/go/src/github.com/go-xiaohei/pugo

docker $DOCKER_OPTIONS run -t --rm -v "$PWD":$SRCDIR -e GOOS=${GOOS:-linux} -e GOARCH=${GOARCH:-arm} -e CGO_ENABLED=${CGO_ENABLED:-0} -w $SRCDIR $IMAGE go build .

#!/bin/bash

#
# Statically compiling Go application: disabling CGO and forcing to rebuild all dependencies with CGO disabled
#

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

#
# Build docker image
#

docker build -t rest-api-go -f Dockerfile .
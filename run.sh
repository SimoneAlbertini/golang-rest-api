#!/bin/bash

INTERACTIVE=-it
FORWARD_PORT=8000

echo "Forwarding to http://localhost:${FORWARD_PORT}"
docker run -p $FORWARD_PORT:8000 $INTERACTIVE rest-api-go
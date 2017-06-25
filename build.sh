#!/bin/bash

set -eu

if test ! -d CMR; then
    echo "CMR directory is missing!" >&2
    exit 1
fi

docker build --tag dukecon/inspectit-cmr:latest-eum .
docker tag dukecon/inspectit-cmr:latest-eum dukecon/inspectit-cmr:latest

#!/bin/sh

set -x
set -e

if [ $# -lt 1 ]; then
    echo "Usage:"
    echo "./build_docker.sh tag"
    exit 1
fi

docker build -t docker.io/cloudindustry/http_gw:$1 .

docker push cloudindustry/http_gw:$1

set +x
set +e
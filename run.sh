#!/bin/bash

DOCKER_COMPOSE_DIR=./compose
ARCH=$(uname --m)

cd $DOCKER_COMPOSE_DIR
[[ "$1" == "-d" ]] && \
    docker-compose -f "run.$ARCH.yml" up -d || \
    docker-compose -f "run.$ARCH.yml" up
#!/bin/bash

DOCKER_COMPOSE_DIR=./compose
cd $DOCKER_COMPOSE_DIR

for fname in $(ls build.*.yml)
do
    # Build for all arch
    docker-compose -f $fname build
    # Push for all arch
    docker-compose -f $fname push
done
#!/bin/bash

IMAGE_BASE=leograba/motion:latest
PLATFORMS="linux/arm/v7,linux/arm64/v8,linux/amd64"

docker buildx build --push --platform ${PLATFORMS} --tag ${IMAGE_BASE} .
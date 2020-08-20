![Docker Build Status](https://github.com/leograba/motion-docker/workflows/Build%20motion/badge.svg)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/leograba/motion/latest)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/_/debian/stable-20200803-slim?label=Debian%20base%20container)
![Motion Version](https://img.shields.io/badge/Motion-4.1.1--1.1%2Bb2-blue)

# Motion Docker Image #

This is a Docker image based on `debian:stable-slim` that has
[Motion](https://motion-project.github.io/) - a highly configurable program
that monitors video signals from many types of cameras.

## How to Use ##

To bring-up the container, run:

```
docker run --rm -d --name motion --device /dev/video0:/dev/video0 -p 8081:8081 leograba/motion:latest
```

Open a web browser on [localhost:8081](localhost:8081), you will see your camera stream with low resolution and low fps. This is the default motion config.

### Alternative: docker-compose ###

You can use the sample `docker-compose.yml` as well, but you must create or
download the file first:

```
git clone https://github.com/leograba/motion-docker.git
cd motion-docker
docker-compose up
```

If you don't have `git` but have `wget` and `unzip`:

```
wget https://github.com/leograba/motion-docker/archive/master.zip
unzip master.zip && rm master.zip
cd motion-docker-master
docker-compose up
```

## Supported Arch ##

It is built for the following architectures:

- x86_64
- armv7
- aarch64
# Motion Docker Image #

This is a Docker image based on `Debian:stable-slim` that has
[Motion](https://motion-project.github.io/) - a highly configurable program
that monitors video signals from many types of cameras.

## How to Use ##

For out-of-the-box usage, run:

- `docker run --rm -d --name motion --device /dev/video0:/dev/video0 -p 8081:8081 leograba/motion:latest`
- `docker run --rm -d --name motion --device /dev/video0:/dev/video0 -p 8081:8081 leograba/motion:latest-arm64v8`
- `docker run --rm -d --name motion --device /dev/video0:/dev/video0 -p 8081:8081 leograba/motion:latest-arm32v7`

You can use the docker-compose files and `run.sh` script to auto detect your
architecture and bring-up the Docker container:

```
git clone https://github.com/leograba/motion-docker.git
cd motion-docker
./run.sh
```

If you don't have `git` but have `wget` and `unzip`:

```
wget https://github.com/leograba/motion-docker/archive/master.zip
unzip master.zip && rm master.zip
cd motion-docker-master
./run.sh
```

It is built for the following architectures:

- x86_64
- armv7
- aarch64

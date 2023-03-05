# vagrant-alpine-deploy-docker

[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_Using vagrant to build a docker image
**from a docker image**
containing the alpine OS
to deploy on docker._

Table of Contents

* [VAGRANTFILE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-alpine-deploy-docker#vagrantfile)
* [BUILD & DEPLOY IMAGE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-alpine-deploy-docker#build--deploy-image)
* [TEST](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-alpine-deploy-docker#test)

## VAGRANTFILE

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/docker/vagrant-alpine-deploy-docker/Vagrantfile)
* Size: ~????
* Source Image: vagrant
  * **"golang:alpine"** for docker on linux
* Custom Image: docker
  * ubuntu 20.04 for docker on linux

## BUILD & DEPLOY IMAGE

You may have to get the source docker image first. Do one of the following,

```bash
docker images
docker pull golang:alpine
```

To build & deploy,

```bash
vagrant up
```

## TEST

To ssh onto running docker container,

```bash
docker exec -i -t vagrant-alpine-deploy-docker /bin/bash
vagrant docker-exec -it -- /bin/sh
```

# vagrant-ubuntu-2004-deploy-docker

[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_Using vagrant to build a docker image
containing the ubuntu 20.04 OS
to deploy on docker._

## VAGRANTFILE

* _Using vagrant to build a docker image
 containing the ubuntu 20.04 OS
 to deploy on docker._
* [Vagrantfile](https://github.com/JeffDeCola/my-docker-image-builds/blob/master/images/compact-multi-stage-build-example/Vagrantfile)
* Size: ~????
* Source Image: vagrant
  * **"tknerr/baseimage-ubuntu-20.04"** for docker on linux
* Custom Image: docker
  * ubuntu 20.04 for docker on linux
* Contains:
  * ????

## BUILD & DEPLOY IMAGE

You may have to get the source vagrant image (box) first. Do one of the following,

```bash
vagrant box list
vagrant box add tknerr/baseimage-ubuntu-20.04
vagrant box add --insecure tknerr/baseimage-ubuntu-20.04 --insecure
```

To build & deploy,

```bash
vagrant up
```

## TEST

To ssh onto running docker container,

```bash
docker exec -i -t vagrant-ubuntu-2004-deploy-docker /bin/bash
vagrant docker-exec -it -- /bin/sh
```

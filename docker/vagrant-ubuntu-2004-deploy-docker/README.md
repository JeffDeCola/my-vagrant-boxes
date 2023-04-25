# vagrant-ubuntu-2004-deploy-docker

[![MIT License](https://img.shields.io/:license-mit-blue.svg)](https://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_Using vagrant to build a docker image
containing the ubuntu 20.04 OS
to deploy on docker._

Table of Contents

* [VAGRANTFILE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-ubuntu-2004-deploy-docker#vagrantfile)
* [BUILD & DEPLOY IMAGE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-ubuntu-2004-deploy-docker#build--deploy-image)
* [TEST IMAGE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-ubuntu-2004-deploy-docker#test-image)

## VAGRANTFILE

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/docker/vagrant-ubuntu-2004-deploy-docker/Vagrantfile)
* Size: ~260MB
* Source Image: vagrant
  * **"tknerr/baseimage-ubuntu-20.04"** for docker on linux
* Custom Image: docker
  * ubuntu 20.04 for docker on linux
* Contains:
  * /home/vagrant/hi-jeff.txt

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

## TEST IMAGE

To ssh onto running docker container,

```bash
docker exec -i -t vagrant-ubuntu-2004-deploy-docker /bin/bash
vagrant docker-exec -it -- /bin/sh
```

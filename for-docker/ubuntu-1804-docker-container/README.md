# ubuntu-1804-docker-container

_The development environment goal is to run ubuntu 18.04 in a docker container._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/for-docker/ubuntu-1804-docker-container/Vagrantfile)
  * Ubuntu 18.04
  * Using
    [tknerr/baseimage-ubuntu-18.04](https://app.vagrantup.com/tknerr/boxes/baseimage-ubuntu-18.04)
    vagrant box (for docker)

## RUN

To run,

```bash
vagrant up
```

To ssh onto running docker container,

```bash
docker exec -i -t jeffs-ubuntu-container /bin/bash
vagrant docker-exec -it -- /bin/sh
```

## ILLUSTRATION

This may help,

![IMAGE - ubuntu-1804-docker-container - IMAGE](../../docs/pics/ubuntu-1804-docker-container.jpg)
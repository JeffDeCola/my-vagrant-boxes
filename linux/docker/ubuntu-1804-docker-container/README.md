# ubuntu-1804-docker-container

_Build and deploy ubuntu 18.04 in a docker container on linux._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/linux/docker/ubuntu-1804-docker-container/Vagrantfile)
  * Ubuntu 18.04
  * Using
    [tknerr/baseimage-ubuntu-18.04](https://app.vagrantup.com/tknerr/boxes/baseimage-ubuntu-18.04)
    vagrant box (for docker)

## GET BASE BOX

You may have to get the box/image first. Do one of the following,

```bash
vagrant box list
vagrant box add tknerr/baseimage-ubuntu-18.04
vagrant box add --insecure tknerr/baseimage-ubuntu-18.04 --insecure
```





## BUILD & DEPLOY

To build & deploy,

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

![IMAGE - ubuntu-1804-docker-container - IMAGE](../../../docs/pics/ubuntu-1804-docker-container.jpg)

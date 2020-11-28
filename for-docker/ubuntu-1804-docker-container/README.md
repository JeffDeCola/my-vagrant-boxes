# ubuntu-1804-docker-container



* Development Environment Goal - Run ubuntu 18.04 in a docker container
* Using
  [tknerr/baseimage-ubuntu-18.04](https://app.vagrantup.com/tknerr/boxes/baseimage-ubuntu-18.04)
  Vagrant Box (for docker)
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/ubuntu-1804-docker-container/Vagrantfile)
  to manage/configure this development environment

To run enter directory,

```bash
vagrant up
```

To ssh onto running docker container,

```bash
docker exec -i -t jeffs-ubuntu-container /bin/bash
vagrant docker-exec -it -- /bin/sh
```

Here is an illustration of what we did,

![IMAGE - ubuntu-1804-docker-container - IMAGE](docs/pics/ubuntu-1804-docker-container.jpg)
# MY VAGRANT BOXES

[![codeclimate Issue Count](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/issues)
[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_A place to keep my vagrant boxes._

tl;dr,

```bash
# BUILD & DEPLOY VAGRANT BOX TO DOCKER
vagrant up???
vagrant ssh???
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1???

# BUILD & DEPLOY VAGRANT BOX TO VIRTUALBOX
vagrant up
vagrant ssh
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1

# OTHER COMMANDS
vagrant box list
vagrant box add --name "ubuntu/jeffs-ubuntu" --force ubuntu-box.box
vagrant box add --insecure ???????????????? --insecure
vagrant box remove ubuntu/jeffs-ubuntu
```

Table of Contents

* [LINUX](https://github.com/JeffDeCola/my-vagrant-boxes#linux)
  * [DOCKER](https://github.com/JeffDeCola/my-vagrant-boxes#docker)
  * [VIRTUALBOX](https://github.com/JeffDeCola/my-vagrant-boxes#virtualbox)
* [WINDOWS](https://github.com/JeffDeCola/my-vagrant-boxes#windows)
  * [DOCKER](https://github.com/JeffDeCola/my-vagrant-boxes#docker)
  * [VIRTUALBOX](https://github.com/JeffDeCola/my-vagrant-boxes#virtualbox)

Documentation and Reference

* My
  [vagrant cheat sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/development-environments/vagrant-cheat-sheet)
* [vagrant box search](https://app.vagrantup.com/boxes/search)
* An illustration of
  [vagrant, docker and packer](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/development-environments/vagrant-cheat-sheet#vagrant-docker-and-packer)
* This repos
  [github webpage](https://jeffdecola.github.io/my-vagrant-boxes/)
  _built with
  [concourse](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/ci-README.md)_

## LINUX

### DOCKER

* [ubuntu-1804-docker-container](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/linux/docker/ubuntu-1804-docker-container)

  _Build and deploy ubuntu 18.04 in a docker container on linux._

### VIRTUALBOX

* _Coming soon_

## WINDOWS

### DOCKER

* _Coming soon_

### VIRTUALBOX

* [concourse-lite-321-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/windows/virtualbox/concourse-lite-321-vm)

  _Build and deploy concourse 3.2.1 in a VirtualBox VM on Windows._

* [jeffs-ubuntu-1804-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/windows/virtualbox/jeffs-ubuntu-1804-virtualbox-vm)

  _Build and deploy ubuntu 18.04 in a VirtualBox VM on Windows._

* [ubuntu-1604-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/windows/virtualbox/ubuntu-1604-virtualbox-vm)

  _Build and deploy ubuntu 16.04 in a VirtualBox VM on Windows._

* [ubuntu-1904-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/windows/virtualbox/ubuntu-1904-virtualbox-vm)

  _Build and deploy ubuntu 19.04 in a VirtualBox VM on Windows._

* [ubuntu-2004-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/windows/virtualbox/ubuntu-2004-virtualbox-vm)

  _Build and deploy ubuntu 20.04 in a VirtualBox VM on Windows._

![IMAGE - vagrant docker packer - IMAGE](./docs/pics/vagrant-docker-packer.jpg)

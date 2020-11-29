# my-vagrant-boxes

[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

_A place for me to create and use vagrant boxes with
the goal of having a common development environment._

tl;dr,

```bash
# RUN
vagrant up
vagrant ssh
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1

# LIST/ADD/REMOVE VAGRANT BOXES
vagrant box list
vagrant box add --name "ubuntu/jeffs-ubuntu" --force ubuntu-box.box
vagrant box remove ubuntu/jeffs-ubuntu
```

Table of Contents,

* [CREATE VAGRANT BOX (FOR VIRTUALBOX ON WINDOWS) USING PACKER](https://github.com/JeffDeCola/my-vagrant-boxes#create-vagrant-box-for-virtualbox-on-windows-using-packer)
* [FOR DOCKER](https://github.com/JeffDeCola/my-vagrant-boxes#for-docker)
* [FOR VIRTUALBOX (WINDOWS)](https://github.com/JeffDeCola/my-vagrant-boxes#for-virtualbox-windows)

Documentation and reference,

* [vagrant-cheat-sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/development-environments/vagrant-cheat-sheet)
* [vagrant box search](https://app.vagrantup.com/boxes/search)

[GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/)
_built with
[concourse ci](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/ci-README.md)_

## MY VAGRANT BOXES

_All sections in alphabetical order._

### CREATE VAGRANT BOX (FOR VIRTUALBOX ON WINDOWS) USING PACKER

Packer is great at creating images, so lets create our own
custom vagrant box using packer.

* [jeffs-ubuntu-1804-virtualbox-vm-box](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/create-vagrant-box-for-virtualbox-on-windows-using-packer/jeffs-ubuntu-1804-virtualbox-vm-box)

  _Using packer to build a vagrant box of ubuntu 18.04._

### FOR DOCKER

I'm not sure I'm sold on this since I could just easily make a docker image
using a Dockerfile.  So I'm not sure I see the real benefit of doing this.
But here it is anyway.

* [ubuntu-1804-docker-container](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/for-docker/ubuntu-1804-docker-container)

  _Run ubuntu 18.04 in a docker container._

### FOR VIRTUALBOX (WINDOWS)

This is also nice if you have a lot of Virtual Machines and want to fire them up
on another machine.  I love configuration files.

* [concourse-lite-321-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/for-virtualbox-windows/concourse-lite-321-vm)

  _Run concourse 3.2.1 in a VirtualBox VM (WINDOWS)._

* [jeffs-ubuntu-1804-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/for-virtualbox-windows/jeffs-ubuntu-1804-virtualbox-vm)

  _Run ubuntu 18.04 in a VirtualBox VM (WINDOWS)._

* [ubuntu-1604-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/for-virtualbox-windows/ubuntu-1604-virtualbox-vm)

  _Run ubuntu 16.04 in a VirtualBox VM (WINDOWS)._

* [ubuntu-1904-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/for-virtualbox-windows/ubuntu-1904-virtualbox-vm)

  _Run ubuntu 19.04 in a VirtualBox VM (WINDOWS)._

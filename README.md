# my-vagrant-boxes

[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

A place for me to use vagrant and create vagrant boxes.
The goal is to create a common development environment._

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

* [USE VAGRANT BOXES - FOR DOCKER](https://github.com/JeffDeCola/my-vagrant-boxes#use-vagrant-boxes---for-docker)
  * [ubuntu-1804-docker-container](https://github.com/JeffDeCola/my-vagrant-boxes#ubuntu-1804-docker-container)
* [USE VAGRANT BOXES - FOR VIRTUALBOX (WINDOWS)](https://github.com/JeffDeCola/my-vagrant-boxes#use-vagrant-boxes---for-virtualbox-windows)
  * [ubuntu-1604-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes#ubuntu-1604-virtualbox-vm)
  * [jeffs-ubuntu-1804-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes#jeffs-ubuntu-1804-virtualbox-vm)
  * [ubuntu-1904-virtualbox-vm](https://github.com/JeffDeCola/my-vagrant-boxes#ubuntu-1904-virtualbox-vm)
  * [concourse-lite-321-vm](https://github.com/JeffDeCola/my-vagrant-boxes#concourse-lite-321-vm)
* [CREATE VAGRANT BOXES (FOR VIRTUALBOX ON WINDOWS) USING PACKER](https://github.com/JeffDeCola/my-vagrant-boxes#create-vagrant-boxes-for-virtualbox-on-windows-using-packer)
  * [jeffs-ubuntu-1804-virtualbox-vm-box](https://github.com/JeffDeCola/my-vagrant-boxes#jeffs-ubuntu-1804-virtualbox-vm-box)

My
[vagrant cheat sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/development-environments/vagrant-cheat-sheet)
has a great illustration of the following boxes.

Search for vagrant boxes at
[vagrant box search](https://app.vagrantup.com/boxes/search).

[GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/).

## USE VAGRANT BOXES - FOR DOCKER

I'm not sure I'm sold on this since I could just easily make a docker image
using a Dockerfile.  So I'm not sure I see the real benefit of doing this.
But here it is anyway.

### ubuntu-1804-docker-container

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

## USE VAGRANT BOXES - FOR VIRTUALBOX (WINDOWS)

This is also nice if you have a lot of Virtual Machines and want to fire them up
on another machine.  I love configuration files.

### ubuntu-1604-virtualbox-vm

* Development Environment Goal - Run ubuntu 16.04 in a VirtualBox VM (WINDOWS)
* Using
  [ubuntu/xenial64](https://app.vagrantup.com/ubuntu/boxes/xenial64)
  Vagrant Box (for virtualbox)
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/ubuntu-1604-virtualbox-vm/Vagrantfile)
  to manage/configure this development environment

To run enter directory,

```bash
vagrant up
```

To ssh onto this VM,

```bash
vagrant ssh
```

We are also able to use another ssh client because we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we places the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your ~/.ssh/known_hosts. Hence,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1
```

A gui should also pop up.  User and password is vagrant.

Here is an illustration of what we did,

![IMAGE - ubuntu-1604-virtualbox-vm - IMAGE](docs/pics/ubuntu-1604-virtualbox-vm.jpg)

### jeffs-ubuntu-1804-virtualbox-vm

Using the box we created below,

* Development Environment Goal - Run ubuntu 18.04 in a VirtualBox VM (WINDOWS)
* Using
  [ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box](https://github.com/JeffDeCola/my-vagrant-boxes#jeffs-ubuntu-1804-virtualbox-vm-box)
  Vagrant Box (for virtualbox) that was created below.
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/jeffs-ubuntu-1804-virtualbox-vm/Vagrantfile)
  to manage/configure this development environment

To run enter directory,

```bash
vagrant up
```

To ssh onto this VM,

```bash
vagrant ssh
```

We are also able to use another ssh client because we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we places the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your ~/.ssh/known_hosts. Hence,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1
```

A gui should also pop up.  User and password is vagrant.

### ubuntu-1904-virtualbox-vm

* Development Environment Goal - Run ubuntu 19.04 in a VirtualBox VM (WINDOWS)
* Using
  [ubuntu/disco64](https://app.vagrantup.com/ubuntu/boxes/disco64)
  Vagrant Box (for virtualbox)
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/ubuntu-1904-virtualbox-vm/Vagrantfile)
  to manage/configure this development environment

To run enter directory,

```bash
vagrant up
```

To ssh onto this VM,

```bash
vagrant ssh
```

We are also able to use another ssh client because we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we places the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your ~/.ssh/known_hosts. Hence,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1
```

A gui should also pop up.  User and password is vagrant.

Here is an illustration of what we did (it is the same diagram I used for 16.04 above),

![IMAGE - ubuntu-1604-virtualbox-vm - IMAGE](docs/pics/ubuntu-1604-virtualbox-vm.jpg)

### concourse-lite-321-vm

Using the box we created below,

* Development Environment Goal - Run concourse 3.2.1 in a VirtualBox VM (WINDOWS)
* Using
  [concourse/lite](https://app.vagrantup.com/concourse/boxes/lite)
  Vagrant Box (for virtualbox).
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/concourse-lite-321-vm/Vagrantfile)
  to manage/configure this development environment

To run enter directory,

```bash
vagrant up
```

To ssh onto this VM,

```bash
vagrant ssh
```

We are also able to use another ssh client because we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we places the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your ~/.ssh/known_hosts. Hence,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1
```

A gui should also pop up.  User and password is vagrant.

You can check it out on your machine
[192.168.100.4:8080](http://192.168.100.4:8080/).

Refer to my cheat sheet on concourse
[here](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).

## CREATE VAGRANT BOXES (FOR VIRTUALBOX ON WINDOWS) USING PACKER

Packer is great at creating images, so lets create our own
custom vagrant box using packer.

### jeffs-ubuntu-1804-virtualbox-vm-box

* Goal - Create a vagrant box of ubuntu 18.04
* Using
  `iso/ubuntu-18.04.2-server-amd64.iso`
  ubuntu 18.04 .iso file.
* [Packer template](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/jeffs-ubuntu-1804-virtualbox-vm-box/vagrant-packer-template.json)
  to manage/configure this development environment

We will use a base image and add `htop` to it.

I got this box creation from [serainville](https://github.com/serainville/packer_templates)
and very slightly modified it.

To run enter directory,

```bash
packer build vagrant-packer-template.json
```

Now we have the box in `/box/jeffs-ubuntu-1804-virtualbox-vm-box.box`.

Add/list/remove box to/from vagrant,

```bash
vagrant box add --name "ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box" --force jeffs-ubuntu-1804-virtualbox-vm-box.box
vagrant box list
vagrant box remove ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box
```

Now use the box like normal.

Here is an illustration of what we did,

![IMAGE - jeffs-ubuntu-1804-virtualbox-vm-box - IMAGE](docs/pics/jeffs-ubuntu-1804-virtualbox-vm-box.jpg)

## UPDATE GITHUB WEBPAGE USING CONCOURSE (OPTIONAL)

For fun, I use concourse to update
[my-vagrant-boxes GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/)
and alert me of the changes via repo status and slack.

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-vagrant-boxes concourse ci pipeline - IMAGE](docs/pics/my-vagrant-boxes-pipeline.jpg)

The `jobs` and `tasks` are,

* `job-readme-github-pages` runs task
  [readme-github-pages.sh](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/ci/scripts/readme-github-pages.sh).

The concourse `resources types` are,

* `my-vagrant-boxes` uses a resource type
  [docker-image](https://hub.docker.com/r/concourse/git-resource/)
  to PULL a repo from github.
* `resource-slack-alert` uses a resource type
  [docker image](https://hub.docker.com/r/cfcommunity/slack-notification-resource)
  that will notify slack on your progress.
* `resource-repo-status` uses a resource type
  [docker image](https://hub.docker.com/r/dpb587/github-status-resource)
  that will update your git status for that particular commit.

For more information on using concourse for continuous integration,
refer to my cheat sheet on [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).

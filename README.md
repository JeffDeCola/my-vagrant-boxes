# my-vagrant-boxes

[![Issue Count](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/my-vagrant-boxes/issues)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

_A place for me to use vagrant and create vagrant boxes.
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

Table of Contents,

* [CREATE VAGRANT BOX (FOR VIRTUALBOX ON WINDOWS) USING PACKER](https://github.com/JeffDeCola/my-vagrant-boxes#create-vagrant-box-for-virtualbox-on-windows-using-packer)
* [FOR DOCKER](https://github.com/JeffDeCola/my-vagrant-boxes#for-docker)
* [FOR VIRTUALBOX (WINDOWS)](https://github.com/JeffDeCola/my-vagrant-boxes#for-virtualbox-windows)

Documentation and reference,

* My
  [vagrant-cheat-sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/development/development-environments/vagrant-cheat-sheet)
  has a great illustration of the following boxes
* Search for vagrant boxes at
  [vagrant box search](https://app.vagrantup.com/boxes/search)

[GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/)

## MY VAGRANT BOXES

All sections in alphabetical order.

### CREATE VAGRANT BOX (FOR VIRTUALBOX ON WINDOWS) USING PACKER

_Packer is great at creating images, so lets create our own
custom vagrant box using packer._

* [jeffs-ubuntu-1804-virtualbox-vm-box]()

  _Create a vagrant box of ubuntu 18.04._

### FOR DOCKER

_I'm not sure I'm sold on this since I could just easily make a docker image
using a Dockerfile.  So I'm not sure I see the real benefit of doing this.
But here it is anyway._

* [ubuntu-1804-docker-container]()

  _Create a box to run ubuntu 18.04 in a docker container_

### FOR VIRTUALBOX (WINDOWS)

_This is also nice if you have a lot of Virtual Machines and want to fire them up
on another machine.  I love configuration files._

* [ubuntu-1604-virtualbox-vm]()

  _Run ubuntu 16.04 in a VirtualBox VM (WINDOWS)_

* [jeffs-ubuntu-1804-virtualbox-vm]()

  _Run ubuntu 18.04 in a VirtualBox VM (WINDOWS)_

* [ubuntu-1904-virtualbox-vm]()

  _Run ubuntu 19.04 in a VirtualBox VM (WINDOWS)_

* [concourse-lite-321-vm]()

  _Run concourse 3.2.1 in a VirtualBox VM (WINDOWS)_

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

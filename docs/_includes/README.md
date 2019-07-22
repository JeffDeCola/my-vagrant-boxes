
# USE VAGRANT BOXES

* ubuntu-docker-container
  * Run an ubuntu 18.04 in a docker container
  * Use
    [tknerr/baseimage-ubuntu-16.04](https://app.vagrantup.com/tknerr/boxes/baseimage-ubuntu-16.04)
    Vagrant Box (for docker)
 

## CREATE VAGRANT BOX


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

![IMAGE - jeffs-ubuntu-1804-virtualbox-vm-box - IMAGE](pics/jeffs-ubuntu-1804-virtualbox-vm-box.jpg)

## UPDATE GITHUB WEBPAGE USING CONCOURSE (OPTIONAL)

For fun, I use concourse to update
[my-vagrant-boxes GitHub Webpage](https://jeffdecola.github.io/my-vagrant-boxes/)
and alert me of the changes via repo status and slack.

A pipeline file [pipeline.yml](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/ci/pipeline.yml)
shows the entire ci flow. Visually, it looks like,

![IMAGE - my-vagrant-boxes concourse ci pipeline - IMAGE](pics/my-vagrant-boxes-pipeline.jpg)

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

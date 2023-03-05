  _built with
  [concourse](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/ci-README.md)_

# OVERVIEW

Vagrant is useful for the automated **BUILD** and **DEPLOY** of a custom image.
This is useful for easily launching a common custom design environment
for a project because you only need a Vagrantfile.

![IMAGE - vagrant-overview - IMAGE](pics/vagrant-overview.jpg)

These builds and deploys use the following statement,

**Using vagrant to build a/an {CUSTOM IMAGE FILE} image
from a {SOURCE IMAGE FILE}
containing the {CUSTOM IMAGE OS} OS
to deploy on {PROVIDER TOOL} on {HOST OS}.**

Where,

* **CUSTOM IMAGE FILE**: docker/gce/virtualbox/etc.
* **SOURCE IMAGE FILE**: docker/gce/virtualbox/etc.
* **CUSTOM IMAGE OS**: ubuntu/alpine/windows/etc.
* **PROVIDER TOOL**: docker/gce/virtualbox/etc.
* **HOST OS**: linux/windows _(not needed)_

## DOCKER

_I'm not sure anyone would use this since you can just use docker._

* [vagrant-alpine-deploy-docker](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-ubuntu-2004-deploy-docker)

  _Using vagrant to build a docker image
  **from a docker image**
  containing the alpine OS
  to deploy on docker._

* [vagrant-ubuntu-2004-deploy-docker](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/docker/vagrant-ubuntu-2004-deploy-docker)

  _Using vagrant to build a docker image
  **from a vagrant image**
  containing the ubuntu 20.04 OS
  to deploy on docker._

## VIRTUALBOX

_You may run this on linux or windows._

* [vagrant-ubuntu-2204-deploy-virtualbox](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/virtualbox/vagrant-ubuntu-2204-deploy-virtualbox)

  _Using vagrant to build a virtualbox image
  **from a vagrant image**
  containing the ubuntu 22.04 OS
  to deploy on virtualbox._

* [vagrant-windows-11-deploy-virtualbox](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/virtualbox/vagrant-windows-11-deploy-virtualbox)

  _Using vagrant to build a virtualbox image
  **from a vagrant image**
  containing the windows 11 OS
  to deploy on virtualbox._

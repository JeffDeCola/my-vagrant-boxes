# vagrant-ubuntu-2204-deploy-virtualbox

[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_Using vagrant to build a virtualbox image
containing the ubuntu 22.04 OS
to deploy on virtualbox._

Table of Contents

* [VAGRANTFILE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/virtualbox/vagrant-ubuntu-2204-deploy-virtualbox#vagrantfile)
* [BUILD & DEPLOY IMAGE](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/virtualbox/vagrant-ubuntu-2204-deploy-virtualbox#build--deploy-image)
* [TEST](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/virtualbox/vagrant-ubuntu-2204-deploy-virtualbox#test)

## VAGRANTFILE

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/virtualbox/vagrant-ubuntu-2204-deploy-virtualbox/Vagrantfile)
* Size: ~5GB
* Source Image: vagrant
  * **"generic/ubuntu2204"** for virtualbox on linux or windows
* Custom Image:  virtualbox
  * ubuntu 22.04 for virtualbox on linux or windows
* Contains:
  * Added user jeff with no initial password

## BUILD & DEPLOY IMAGE

You may have to get the source vagrant image (box) first. If os, do one of the following,

```bash
vagrant box list
vagrant box add generic/ubuntu2204
vagrant box add --insecure generic/ubuntu2204 --insecure
```

To build & deploy,

```bash
vagrant up
```

Remember, this creates a virtualbox image.  You actually never have to
vagrant up again.

## TEST

There are a few ways to login to the VM.

If you used vagrant up, you can do the following,

```bash
vagrant ssh
```

You could also use an ssh client. Since we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we placed the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your `~/.ssh/known_hosts`.

Hence, get ip address the vm is using,

```bash
vagrant ssh-config
```

then ssh onto the vm,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@{IP}
```

Last, you could also enter the username/password in the virtualbox gui,

```text
username: vagrant
password: vagrant
```

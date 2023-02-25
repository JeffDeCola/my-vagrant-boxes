# ubuntu-1604-virtualbox-vm

[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_Build and deploy ubuntu 16.04 in a VirtualBox VM on Windows._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/windows/virtualbox/ubuntu-1604-virtualbox-vm/Vagrantfile)
  * Ubuntu 16.04
  * Using
    [ubuntu/xenial64](https://app.vagrantup.com/ubuntu/boxes/xenial64)
    vagrant box (for virtualbox)

## GET BASE BOX

Copy the Vagrantfile to a windows folder.

In powershell, you may have to get the box/image first. Do one of the following,

```bash
vagrant box list
vagrant box add ubuntu/xenial64
vagrant box add --insecure ubuntu/xenial64 --insecure
```




## RUN

To run,

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

A gui should also pop up. User and password is vagrant.

## ILLUSTRATION

This may help,

![IMAGE - ubuntu-1604-virtualbox-vm - IMAGE](../../docs/pics/ubuntu-1604-virtualbox-vm.jpg)

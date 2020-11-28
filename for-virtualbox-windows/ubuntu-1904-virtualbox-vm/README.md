# ubuntu-1904-virtualbox-vm

_The development environment goal is to run ubuntu 19.04 in a VirtualBox VM (WINDOWS)._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/for-virtualbox-windows/ubuntu-1904-virtualbox-vm/Vagrantfile)
  * Ubuntu 19.04
  * Using
    [ubuntu/disco64](https://app.vagrantup.com/ubuntu/boxes/disco64)
    vagrant box (for virtualbox)

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

# ubuntu-2004-virtualbox-vm

_The development environment goal is to run ubuntu 20.04 in a VirtualBox VM (WINDOWS)._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/for-virtualbox-windows/ubuntu-2004-virtualbox-vm/Vagrantfile)
  * Ubuntu 20.04 LTS
  * Using
    [ubuntu/focal64](https://app.vagrantup.com/ubuntu/boxes/focal64)
    vagrant box (for virtualbox)

## TO USE WITH WINDOWS AND WSL2

Simply copy the VagrantFile to a windows folder outside WSL 2.

## NETWORK

In the virtualbox setting set network adapter 1 to Host-only and adapter 2 to NAT.
You will have to run ifconfig to find the IP you can use to ssh into.

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
ssh -i ~/.vagrant.d/insecure_private_key -p 22 vagrant@192.168.56.102
```

A gui should also pop up. User and password is vagrant.

## ILLUSTRATION

This may help,

![IMAGE - ubuntu-1604-virtualbox-vm - IMAGE](../../docs/pics/ubuntu-1604-virtualbox-vm.jpg)

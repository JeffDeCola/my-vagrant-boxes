# jeffs-ubuntu-1804-virtualbox-vm

_The development environment goal is to run ubuntu 18.04 in a VirtualBox VM (WINDOWS)._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/for-virtualbox-windows/jeffs-ubuntu-1804-virtualbox-vm/Vagrantfile)
  * Ubuntu 18.04
  * Using my
    [ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box](https://github.com/JeffDeCola/my-vagrant-boxes/tree/master/create-vagrant-box-for-virtualbox-on-windows-using-packer/jeffs-ubuntu-1804-virtualbox-vm-box)
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

We're also able to use another ssh client because we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we places the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your ~/.ssh/known_hosts. Hence,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1
```

A gui should also pop up. User and password is vagrant.

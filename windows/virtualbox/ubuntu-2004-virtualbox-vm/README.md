# ubuntu-2004-virtualbox-vm

_Build and deploy ubuntu 20.04 in a VirtualBox VM on Windows._

## VAGRANTFILE

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/windows/virtualbox/ubuntu-2004-virtualbox-vm/Vagrantfile)
  * Ubuntu 20.04 LTS
  * Using
    [ubuntu/focal64](https://app.vagrantup.com/ubuntu/boxes/focal64)
    vagrant box (for virtualbox)

## GET BASE BOX

Copy the Vagrantfile to a windows folder.

In powershell, you may have to get the box/image first. Do one of the following,

```bash
vagrant box list
vagrant box add ubuntu/focal64
vagrant box add --insecure ubuntu/focal64 --insecure
```




## MAKE KEYS

Makes ssh keys and place in `~/.ssh`

```bash
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "my_vagrant_key"
```

Then run,

```bash
vagrant up
```

To ssh onto this VM,,

```bash
vagrant ssh
```

But you don't always have to use vagrant up, you can just start it
from the VirtualBox GUI.

## SSH AND KEYS

In the VirtualBox settings, set network adapter 1 to Host-only and adapter 2 to NAT.
You will have to run ifconfig to find the IP you can use to ssh into.

We are also able to use another ssh client because we are using
vagrant insecure keys. We have the private key in `~/.vagrant.d`.
And we places the public key on the box in `~/.ssh/authorized_keys`
(See Vagrantfile). Also, you may have to delete previous fingerprints
in your ~/.ssh/known_hosts. Hence,

```bash
ssh -i ~/.vagrant.d/insecure_private_key -p 2222 vagrant@127.0.0.1
ssh -i ~/.vagrant.d/insecure_private_key -p 22 vagrant@192.168.56.102
```

A gui should also pop up. User and password is `vagrant`.

## ILLUSTRATION

This may help,

![IMAGE - ubuntu-1604-virtualbox-vm - IMAGE](../../docs/pics/ubuntu-1604-virtualbox-vm.jpg)

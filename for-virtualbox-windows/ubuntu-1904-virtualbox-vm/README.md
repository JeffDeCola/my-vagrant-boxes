# ubuntu-1904-virtualbox-vm

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
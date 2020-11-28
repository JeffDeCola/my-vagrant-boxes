# jeffs-ubuntu-1804-virtualbox-vm

_Run ubuntu 18.04 in a docker container._


Using the box we created below,

* Development Environment Goal - Run ubuntu 18.04 in a VirtualBox VM (WINDOWS)
* Using
  [ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box](https://github.com/JeffDeCola/my-vagrant-boxes#jeffs-ubuntu-1804-virtualbox-vm-box)
  Vagrant Box (for virtualbox) that was created below.
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/jeffs-ubuntu-1804-virtualbox-vm/Vagrantfile)
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

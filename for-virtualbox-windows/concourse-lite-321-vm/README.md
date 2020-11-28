# concourse-lite-321-vm

_Run ubuntu 18.04 in a docker container._



Using the box we created below,

* Development Environment Goal - Run concourse 3.2.1 in a VirtualBox VM (WINDOWS)
* Using
  [concourse/lite](https://app.vagrantup.com/concourse/boxes/lite)
  Vagrant Box (for virtualbox).
* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/concourse-lite-321-vm/Vagrantfile)
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

You can check it out on your machine
[192.168.100.4:8080](http://192.168.100.4:8080/).

Refer to my cheat sheet on concourse
[here](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).


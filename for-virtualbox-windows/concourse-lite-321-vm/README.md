# concourse-lite-321-vm

_The development environment goal is to run concourse 3.2.1 in a VirtualBox VM (WINDOWS)._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/for-virtualbox-windows/concourse-lite-321-vm/Vagrantfile)
  * Concourse 3.2.1
  * Using
    [concourse/lite](https://app.vagrantup.com/concourse/boxes/lite)
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

## CHECK

You can check it out on your machine
[192.168.100.4:8080](http://192.168.100.4:8080/).

Refer to my
[concourse-cheat-sheet](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/software/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).

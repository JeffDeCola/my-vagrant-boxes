# concourse-lite-321-vm

[![MIT License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![jeffdecola.com](https://img.shields.io/badge/website-jeffdecola.com-blue)](https://jeffdecola.com)

_Build and deploy concourse 3.2.1 in a VirtualBox VM on Windows._

## VAGRANTFILE

 Used to manage and configure this development environment.

* [Vagrantfile](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/windows/virtualbox/concourse-lite-321-vm/Vagrantfile)
  * Concourse 3.2.1
  * Using
    [concourse/lite](https://app.vagrantup.com/concourse/boxes/lite)
    vagrant box (for virtualbox)

## GET BASE BOX

Copy the Vagrantfile to a windows folder.

In powershell, you may have to get the box/image first. Do one of the following,

```bash
vagrant box list
vagrant box add concourse/lite
vagrant box add --insecure concourse/lite --insecure
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

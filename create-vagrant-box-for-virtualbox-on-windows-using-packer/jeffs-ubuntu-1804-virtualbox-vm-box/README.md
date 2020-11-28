# jeffs-ubuntu-1804-virtualbox-vm-box

_Create a vagrant box from scratch of ubuntu 18.04._

## OVERVIEW

* Create a vagrant box of ubuntu 18.04
* Using
  `iso/ubuntu-18.04.2-server-amd64.iso`
  ubuntu 18.04 .iso file
* [Packer template](https://github.com/JeffDeCola/my-vagrant-boxes/blob/master/jeffs-ubuntu-1804-virtualbox-vm-box/vagrant-packer-template.json)
  to manage/configure this development environment

We will use a base image and add `htop` to it.

I got this box creation from [serainville](https://github.com/serainville/packer_templates)
and very slightly modified it.

## BUILD

To run,

```bash
packer build vagrant-packer-template.json
```

Now we have the box in `/box/jeffs-ubuntu-1804-virtualbox-vm-box.box`.

## ADD/REMOVE FROM VAGRANT

Add/list/remove box to/from vagrant,

```bash
vagrant box add --name "ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box" --force jeffs-ubuntu-1804-virtualbox-vm-box.box
vagrant box list
vagrant box remove ubuntu/jeffs-ubuntu-1804-virtualbox-vm-box
```

## ILLUSTRATION

Here is an illustration of what we did,

![IMAGE - jeffs-ubuntu-1804-virtualbox-vm-box - IMAGE](../../docs/pics/jeffs-ubuntu-1804-virtualbox-vm-box.jpg)
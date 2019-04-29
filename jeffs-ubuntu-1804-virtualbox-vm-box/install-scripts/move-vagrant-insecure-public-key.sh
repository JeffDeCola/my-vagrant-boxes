#!/bin/bash -e
# jeffs-ubuntu-1804-virtualbox-vm-box move-vagrant-insecure-public-key.sh

echo " "
echo "************************************************************************"
echo "************************** move-vagrant-insecure-public-key.sh (START) *"
echo "You are root in /home/vagrant"
echo " "
whoami
pwd
echo " "

echo "Make /vagrant/.ssh"
[ -d /home/vagrant/.ssh ] || mkdir /home/vagrant/.ssh
echo " "

echo "chmod 700 /home/vagrant/.ssh"
chmod 700 /home/vagrant/.ssh
echo " "

echo "mv /tmp/vagrant-insecure-public-key.txt /vagrant/.ssh/authorized_keys"
echo "The owner and group should be vagrant"
mv /tmp/vagrant-insecure-public-key.txt /home/vagrant/.ssh/authorized_keys
echo " "

echo "chmod 644 /home/vagrant/.ssh/authorized_keys"
chmod 644 /home/vagrant/.ssh/authorized_keys
echo " "

echo "chown and chgrp of .ssh to vagrant"
chown vagrant /home/vagrant/.ssh
chgrp vagrant /home/vagrant/.ssh
echo " "

echo "chown and chgrp of authorized_keys to vagrant just in case"
chown vagrant /home/vagrant/.ssh/authorized_keys
chgrp vagrant /home/vagrant/.ssh/authorized_keys
echo " "

echo "**************************** move-vagrant-insecure-public-key.sh (END) *"
echo "************************************************************************"
echo " "
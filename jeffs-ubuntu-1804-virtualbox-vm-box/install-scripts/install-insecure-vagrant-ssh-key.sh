#!/bin/bash -e
# jeffs-ubuntu-1804-virtualbox-vm-box install-packages.sh

echo " "
echo "************************************************************************"
echo "****************************************** install-packages.sh (START) *"
echo "You are root in /home/vagrant"
echo " "
whoami
pwd
echo " "

echo "Installing vagrant keys"
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 ~/.ssh/authorized_keys
chown -R vagrant ~/.ssh

echo "******************************************** install-packages.sh (END) *"
echo "************************************************************************"
echo " "




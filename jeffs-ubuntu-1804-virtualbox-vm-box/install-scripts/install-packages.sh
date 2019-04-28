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

sudo apt-get -y install htop

echo "******************************************** install-packages.sh (END) *"
echo "************************************************************************"
echo " "

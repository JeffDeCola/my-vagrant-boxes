#!/bin/bash -e
# jeffs-ubuntu-1804-virtualbox-vm-box move-welcome-file.sh

echo " "
echo "************************************************************************"
echo "***************************************** move-welcome-file.sh (START) *"
echo "You are root in /home/vagrant"
echo " "
whoami
pwd
echo " "

echo "mv /tmp/welcome.txt /home/vagrant"
mv /tmp/welcome.txt /home/vagrant
echo " "

echo "******************************************* move-welcome-file.sh (END) *"
echo "************************************************************************"
echo " "
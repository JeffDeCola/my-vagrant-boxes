#!/bin/bash -e
# jeffs-ubuntu-1804-virtualbox-vm-box init.sh

echo " "
echo "************************************************************************"
echo "****************************************************** init.sh (START) *"
echo "You are root in /home/vagrant"
echo " "
whoami
pwd
echo " "

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

apt update
apt upgrade -y

echo "******************************************************** init.sh (END) *"
echo "************************************************************************"
echo " "
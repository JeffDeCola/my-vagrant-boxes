#!/bin/bash -e
# jeffs-ubuntu-1804-virtualbox-vm-box install-packages.sh

echo " "
echo "************************************************************************"
echo "****************************************** install-packages.sh (START) *"
echo "You are root in /home/packer"
echo " "

# Apt cleanup.
apt autoremove
apt update

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync

echo "******************************************** install-packages.sh (END) *"
echo "************************************************************************"
echo " "
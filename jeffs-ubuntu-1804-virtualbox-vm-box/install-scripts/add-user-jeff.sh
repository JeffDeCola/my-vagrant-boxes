#!/bin/bash -e
# hello-go-deploy-gce add-user-jeff.sh

echo " " 
echo "************************************************************************"
echo "********************************************* add-user-jeff.sh (START) *"
echo "You are root in /home/packer"
echo " "

echo "adduser"
echo "   --disabled-password Do not set a pssssword for the user jeff"
echo "   --gecos do not prompt for finger and password"
sudo adduser --disabled-password --gecos "" jeff
echo " "

echo "*********************************************** add-user-jeff.sh (END) *"
echo "************************************************************************"
echo " "
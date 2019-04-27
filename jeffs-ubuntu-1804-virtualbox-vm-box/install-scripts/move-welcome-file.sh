#!/bin/bash -e
# hello-go-deploy-gce move-welcome-file.sh

echo " "
echo "************************************************************************"
echo "***************************************** move-welcome-file.sh (START) *"
echo "You are root in /home/packer"
echo " "

echo "cd /home/jeff"
cd /home/jeff
echo " "

echo "mv /tmp/welcome.txt /home/jeff"
mv /tmp/welcome.txt /home/jeff
echo " "

echo "******************************************* move-welcome-file.sh (END) *"
echo "************************************************************************"
echo " "
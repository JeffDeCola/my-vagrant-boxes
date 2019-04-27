#!/bin/bash -e
# hello-go-deploy-gce install-docker.sh

echo " " 
echo "************************************************************************"
echo "******************************************** install-docker.sh (START) *"
echo "You are root in /home/packer"
echo " "

echo "*** PART I - SET UP THE REPOSITORY"
echo " "

echo "Install a few prerequisite packages"
apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
echo " "

echo "Add the GPG key for the official Docker repository to your system"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo " "

echo "Add the Docker repository to APT sources"
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
echo " "

echo "*** PART II - INSTALL DOCKER CE"
echo " "

echo "Update the package database with the Docker packages from the newly added repo"
apt update
echo " "

echo "Install docker"
apt-get -y install docker-ce docker-ce-cli containerd.io
echo " "

echo "Check that it will run at boot"
systemctl status docker
echo " "

echo "********************************************** install-docker.sh (END) *"
echo "************************************************************************"
echo " "
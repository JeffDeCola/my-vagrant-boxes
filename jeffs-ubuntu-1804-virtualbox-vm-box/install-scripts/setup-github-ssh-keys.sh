#!/bin/bash -e
# hello-go-deploy-gce setup-github-ssh-keys.sh

echo " " 
echo "************************************************************************"
echo "************************************* setup-github-ssh-keys.sh (START) *"
echo "You are root in /home/packer"
echo " "

echo "Make /root/.ssh"
[ -d /root/.ssh ] || mkdir /root/.ssh

echo "mv /tmp/gce-github-vm* /root/.ssh"
mv /tmp/gce-github-vm /root/.ssh/id_rsa
mv /tmp/gce-github-vm.pub /root/.ssh/id_rsa.pub
echo " "

echo "chmod 600 for both keys"
chmod 600 /root/.ssh/id_rsa*

echo "Start ssh agent for root"
eval $(ssh-agent -s)

echo "Put github.com fingerprint in known_hosts file"
ssh-keyscan github.com >> /root/.ssh/known_hosts

echo "Add private key to SSH authentication agent"
ssh-add /root/.ssh/id_rsa

echo "Connect to github with public key (you already put public key on github)"
# The || : forces it to return a 0 exit code, because you get a warning first time connecting from a new ip.
ssh -T git@github.com || :
# ssh -i ~/.ssh/id_rsa.pub git@github.com || :
echo " "

echo "**************************************** setup-github-ssh-key.sh (END) *"
echo "************************************************************************"
echo " "
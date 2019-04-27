#!/bin/bash
# hello-go-deploy-gce upgrade-system.sh

echo " " 
echo "******************************* upgrade-system.sh (START)"
echo "You are root in /home/packer"
echo " "

echo "update/upgrade system"
while true; do
  apt-get -y update
  # apt-get -y upgrade

  if [ $? -eq 0 ]; then
    break
  fi
done
echo " "

echo "Turn off periodic updates"
echo "Open the file /etc/apt/apt.conf.d/10periodic and change:"
echo '   - FROM - APT::Periodic::Update-Package-Lists "1";'
echo '   - TO   - APT::Periodic::Update-Package-Lists "0";'
echo 'APT::Periodic::Unattended-Upgrade "0";' >> /etc/apt/apt.conf.d/10periodic

echo "Turn off auto-upgrades"
echo "Open the file /etc/apt/apt.conf.d/20auto-upgrades and add:"
echo '   - APT::Periodic::Update-Package-Lists "1";'
echo '   - APT::Periodic::Unattended-Upgrade "0";'
echo -e 'APT::Periodic::Update-Package-Lists "1";\nAPT::Periodic::Unattended-Upgrade "0";' >> /etc/apt/apt.conf.d/20auto-upgrades
echo " "

#echo "Increase file limits"
#echo -e "*       soft    nofile  100000\n*       hard    nofile  100000\nroot    soft    nofile  100000\nroot    hard    nofile  100000" >> /etc/security/limits.conf
#echo "fs.inotify.max_user_watches=100000" >> /etc/sysctl.conf
#echo " "

echo "******************************* upgrade-system.sh (END)"
echo " "
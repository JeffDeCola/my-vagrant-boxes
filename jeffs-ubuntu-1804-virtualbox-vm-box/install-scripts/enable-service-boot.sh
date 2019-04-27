#!/bin/bash -e
# hello-go-deploy-gce enable-service-boot.sh

echo " " 
echo "************************************************************************"
echo "*************************************** enable-service-boot.sh (START) *"
echo "You are root in /home/packer"
echo " "

echo "Copy hello-go.service file to /lib/systemd/system/"
cp /root/src/github.com/JeffDeCola/hello-go-deploy-gce/example-01/deploy-gce/build-image/hello-go.service /lib/systemd/system/.
echo " "

echo "chmod 644 on hello-go.service"
chmod 644 /lib/systemd/system/hello-go.service
echo " "

echo "systemctl enalbenablee and start hello-go.service"
systemctl daemon-reload
systemctl enable hello-go.service
systemctl start hello-go.service
echo " "

echo "***************************************** enable-service-boot.sh (END) *"
echo "************************************************************************"
echo " "
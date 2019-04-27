#!/bin/bash -e
# hello-go-deploy-gce install-go.sh

echo " " 
echo "************************************************************************"
echo "************************************************ install-go.sh (START) *"
echo "You are root in /home/packer"
echo " "

echo "mkdir /tmp/go"
mkdir -p /tmp/go
echo " "

echo "Download go1.10.3 (wget quiet mode), untar and move to /usr/local"
wget -q https://storage.googleapis.com/golang/go1.10.3.linux-amd64.tar.gz
tar -xf go1.10.3.linux-amd64.tar.gz
mv go /usr/local
echo " "

echo "Create go environment variables and place in /root/.bashrc"
export GOPATH="/root"
export GOROOT="/usr/local/go"
export GOBIN=$GOPATH/bin
export PATH=$GOROOT/bin::$GOBIN:$PATH
echo 'export GOPATH="/root"
export GOROOT="/usr/local/go"
export GOBIN=$GOPATH/bin
export PATH=$GOROOT/bin::$GOBIN:$PATH
CDPATH=$CDPATH:$GOPATH/src/github.com' >> /root/.bashrc
echo " "

echo "make go directories"
mkdir -p $GOPATH/bin
mkdir -p $GOPATH/src/github.com/JeffDeCola
echo " "

echo "check version and your go env"
go version
go env
echo " "

echo "************************************************** install-go.sh (END) *"
echo "************************************************************************"
echo " "

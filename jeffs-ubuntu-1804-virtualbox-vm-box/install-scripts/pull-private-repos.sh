#!/bin/bash -e
# hello-go-deploy-gce pull-private-repos.sh

echo " "
echo "************************************************************************"
echo "**************************************** pull-private-repos.sh (START) *"
echo "You are root in /home/packer"
echo " "

export GOPATH="/root"
export GOROOT="/usr/local/go"
export GOBIN=$GOPATH/bin
export PATH=$GOROOT/bin::$GOBIN:$PATH

echo "cd into your go src directory"
cd "$GOPATH/src/github.com/JeffDeCola"
echo " "

echo "Git clone any public or private repo"
git clone git@github.com:JeffDeCola/hello-go-deploy-gce
echo " "

echo "****************************************** pull-private-repos.sh (END) *"
echo "************************************************************************"
echo " "

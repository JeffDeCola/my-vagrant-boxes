#!/bin/sh -e
# jeffs-ubuntu-1804-virtualbox-vm-box build-box.sh

echo " "

if [ "$1" = "-debug" ]
then
    echo "**********************************************************************"
    echo "* build-box.sh -debug (START) ****************************************"
    echo "**********************************************************************"
    # set -x enables a mode of the shell where all executed commands are printed to the terminal.
    set -x
    echo " "
else
    echo "**********************************************************************"
    echo "* build-box.sh (START) ***********************************************"
    echo "**********************************************************************"
    echo " "
fi

echo "The goal is to create a custom image on gce using packer."
echo " "

echo "Check for -v switch"
if [ "$1" = "-v" ]
then
    echo "Validate this file"
    command="validate"
else
    echo "Not validating - Lets build the image"
    # command="build -force"
    command="build"
fi
echo " "

echo "packer build command"
packer $command \
    vagrant-packer-template.json
echo " "

echo "**********************************************************************"
echo "* build-box.sh (END) *************************************************"
echo "**********************************************************************"
echo " "

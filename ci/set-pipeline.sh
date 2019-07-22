#!/bin/bash
# my-vagrant-boxes set-pipeline.sh

fly -t ci set-pipeline -p my-vagrant-boxes -c pipeline.yml --load-vars-from ../../../.credentials.yml

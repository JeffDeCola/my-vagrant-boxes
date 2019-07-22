#!/bin/bash
<<<<<<< HEAD
# my-vagrant-boxes set-pipeline.sh
=======
#my-vagrant-boxes set-pipeline.sh
>>>>>>> a9595ba58f1c3a2466a199f66c0f431fb0ab6b1e

fly -t ci set-pipeline -p my-vagrant-boxes -c pipeline.yml --load-vars-from ../../../.credentials.yml

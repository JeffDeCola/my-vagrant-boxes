#!/bin/bash
<<<<<<< HEAD
# my-vagrant-boxes set-pipeline.sh
=======
#my-vagrant-boxes set-pipeline.sh
>>>>>>> bcf434354d0881dbf3248a9bc9bdca675340e9c3

fly -t ci set-pipeline -p my-vagrant-boxes -c pipeline.yml --load-vars-from ../../../.credentials.yml

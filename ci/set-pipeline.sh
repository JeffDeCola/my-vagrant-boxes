#!/bin/bash
# my-docker-image-builds set-pipeline.sh

fly -t ci set-pipeline -p my-docker-image-builds -c pipeline.yml --load-vars-from ../../../.credentials.yml

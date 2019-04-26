#!/bin/bash
# my-docker-image-builds destroy-pipeline.sh

fly -t ci destroy-pipeline --pipeline my-docker-image-builds

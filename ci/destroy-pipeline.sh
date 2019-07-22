#!/bin/bash
# my-vagrant-boxes destroy-pipeline.sh

fly -t ci destroy-pipeline --pipeline my-vagrant-boxes

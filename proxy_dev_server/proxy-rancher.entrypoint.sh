#!/bin/bash

##------ use for apt install and modify in container
# apt-get install apt-transport-https
# apt-get update
# apt-get install vim -y
# alias ll='ls -l'

node bin/index

exec "$@"
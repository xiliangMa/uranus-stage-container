#!/bin/bash

alias "ll=ls -l"

echo "para $*"

cd /opt/uranus-stage
npm run dev


#exec "$@"
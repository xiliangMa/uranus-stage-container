#!/usr/bin/env bash

cd /opt/uranus-stage
git pull
npm run build:dll
npm run build
cp -rf dist /opt/uranus-stage-container/uranus-stage-ui/uranus-stage
cd /opt/uranus-stage-container

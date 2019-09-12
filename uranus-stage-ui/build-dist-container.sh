#!/bin/bash
set -e

cd /build_dir/uranus-stage

npm install --registry=https://registry.npm.taobao.org  2>/dev/null
npm run build:dll
npm run build



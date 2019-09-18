#!/bin/bash
set -e

echo  " rebuid build dist dir : ${BUILD_DIST_PARA}"

if [ "${BUILD_DIST_PARA}" == "Y" ]; then
    cd /build_dir/uranus-stage
    
    npm install --registry=https://registry.npm.taobao.org  2>/dev/null
    npm run build:dll
    npm run build
else
    echo 'use cached dist dir content'
    mkdir /build_dir/uranus-stage/dist
fi


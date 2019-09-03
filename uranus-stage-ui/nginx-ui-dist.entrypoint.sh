#!/bin/bash


sed -i "s/----->HOST_IP<-----/$1/" /opt/dist/static/serverConfig.js
sed -i "s/----->HOST_IP<-----/$1/" /etc/nginx/conf.d/ui-rancher.proxy.conf


cat /opt/dist/static/serverConfig.js
cat /etc/nginx/conf.d/ui-rancher.proxy.conf

nginx -g "daemon off;"

exec "$@"
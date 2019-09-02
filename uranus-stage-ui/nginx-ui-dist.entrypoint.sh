#!/bin/bash

sed -i 's/----->HOST_IP<-----/'$HOST_IP/ /opt/dist/static/serverConfig.js
sed -i 's/----->HOST_IP<-----/'$HOST_IP/ /etc/nginx/conf.d/ui-rancher.proxy.conf

cat /opt/dist/static/serverConfig.js
cat /etc/nginx/conf.d/ui-rancher.proxy.conf

nginx -g "daemon off;"

exec "$@"
#!/bin/bash


sed -i "s/----->HOST_IP<-----/$1/" /opt/dist/static/serverConfig.js
sed -i "s/----->JAVASRV_IP<-----/$2/" /opt/dist/static/serverConfig.js
sed -i "s/----->HOST_IP<-----/$1/" /etc/nginx/conf.d/ui-rancher.proxy.conf
sed -i "s/----->JAVASRV_IP<-----/$2/" /etc/nginx/conf.d/java-api.proxy.conf


cat /opt/dist/static/serverConfig.js
cat /etc/nginx/conf.d/ui-rancher.proxy.conf | grep server_name
cat /etc/nginx/conf.d/java-api.proxy.conf | grep proxy_pass

nginx -g "daemon off;"

exec "$@"

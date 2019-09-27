#!/bin/bash


sed -i "s/----->HOST_IP<-----/${HOST_IP_ENT}/" /opt/dist/static/serverConfig.js
sed -i "s/----->IMGSRV_PORT<-----/${IMGSRV_PORT_ENT}/" /opt/dist/static/serverConfig.js
sed -i "s/----->HOST_IP<-----/${HOST_IP_ENT}/" /etc/nginx/conf.d/ui-rancher.proxy.conf
sed -i "s/----->HOST_IP<-----/${HOST_IP_ENT}/" /etc/nginx/conf.d/img-server.proxy.conf
sed -i "s/----->JAVASRV_IP<-----/${JAVASRV_IP}/" /etc/nginx/conf.d/img-server.proxy.conf
sed -i "s/----->IMGSRV_PORT<-----/${IMGSRV_PORT_ENT}/" /etc/nginx/conf.d/img-server.proxy.conf
sed -i "s/----->JAVASRV_IP<-----/${JAVASRV_IP_ENT}/" /etc/nginx/conf.d/java-api.proxy.conf


cat /opt/dist/static/serverConfig.js
cat /etc/nginx/conf.d/ui-rancher.proxy.conf | grep server_name
cat /etc/nginx/conf.d/java-api.proxy.conf | grep proxy_pass

# if [ $BUILD_DIST_PARA = "Y" ];then
#    if [ ! -d "/build_dir/uranus-stage" ];then
#	    mkdir /build_dir/uranus-stage
#    fi
#	cp -r /opt/dist /build_dir/uranus-stage/
# else
    # cp -r /build_dir/uranus-stage/dist/* /opt/dist
# fi

nginx -g "daemon off;"

#exec "$@"

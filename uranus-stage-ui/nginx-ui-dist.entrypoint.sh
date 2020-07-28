#!/bin/bash



cat /opt/dist/static/serverConfig.js | grep -v "^\s.//"
cat /etc/nginx/conf.d/ui-rancher.proxy.conf | grep server_name | grep -v rewrite
cat /etc/nginx/conf.d/java-api.proxy.conf | grep proxy_pass

# 缓存方式复制dist，此功能仅在开发中用到
# if [ $BUILD_DIST = "Y" ];then
#    if [ ! -d "/build_dir/uranus-stage" ];then
#	    mkdir /build_dir/uranus-stage
#    fi
#	cp -r /opt/dist /build_dir/uranus-stage/
# else
    # cp -r /build_dir/uranus-stage/dist/* /opt/dist
# fi

nginx -g "daemon off;"

#exec "$@"

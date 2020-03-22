# uranus-stage-container
ursnus-stage in docker



## Run with docker-compose
启动开发版
```
./dc up -d
```

关闭开发版：
```
./dc down
```


## release version
### 安装
1 恢复镜像
```
docker load -i uranus-stage-ui-images.tgz
```

### 环境配置
1 修改 dc-release 中的配置信息

```
export JAVASRV_IP=47.105.151.140 ## JavaAPI服务IP
export HOST_IP=192.168.1.11  ## 外边访问IP
export IMGSRV_PORT=3300  ## 图片服务的端口
export TARGET_IP=15.164.158.198  #图片服务的IP
```
rancher API连接授权码，这项最好是在此脚本外执行或者加入启动中
```
export AUTH=xxxxx
```
2 修改rancher节点配置，修改proxy-host-map.js，最后一行不能加,
{'47.105.148.216': '/rancher1'},
{'15.164.158.198': '/rancher2'}


### 启动服务
1 关闭运行中的容器
```
./dc-release down
```

2 启动所有容器
```
./dc-release up -d
```


### 关闭服务
1 关闭所有容器
```
./dc-release down
```



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
修改 dc-release 中的配置信息

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

1 注意在切换到发布版启动之前,需要先执行关闭开发模式容器
```
./dc down
```

2 启动发布版本
```
./dc-release up -d
```

3 关闭发布版本
```
./dc-release down
```



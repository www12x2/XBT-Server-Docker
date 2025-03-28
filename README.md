# XBT-Server-Docker

本项目为：[EnderWolf006/XBT](https://github.com/EnderWolf006/XBT) 项目的server服务端docker自动构建项目

# 如何使用
- 需映射端口：`3030`
- 需映射存储目录：`\app\keys` （具体需存放的文件见 [EnderWolf006/XBT](https://github.com/EnderWolf006/XBT) 项目README）

### 获取日志
`docker logs 容器名`
 
示例 `docker logs xbt-server`
### 命令行运行

```shell
docker run -d \
-p 3030:3030 \
-v ./keys:/app/keys\
--name xbt-server \
--restart=always \
www12x2/xbt-server-docker:latest
```
### docker-compose 运行
创建 `docker-compose.yml` 文件
```yaml
# docker-compose.yml
version: "3"
services:
    xbt-server:
        ports:
            - 3030:3030
        volumes:
            - ./keys:/app/keys
        container_name: xbt-server
        network_mode: bridge
        restart: always
        image: www12x2/xbt-server-docker:latest

```

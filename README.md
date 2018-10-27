# Avatar 发布项目

发布 Avatar 项目

## 生产环境(prod)
1. Dockerfile 用于构建数据库镜像，基于 `5824600/mysql:5.7`，将 `mysql.initdb.d` 复制到 `${MYSQL_HOME}` 中，用于初始化数据库。

### TODO:
1. 缺少 `redis`。
2. 缺少 `Avatar 后台管理项目`。
3. 缺少 `docker-compose.yml`。
4. 缺少一个脚本文件用于一键发布。

## 沙箱环境(sandbox)

开发环境依赖的基础服务:

1. `redis` 缓存:
   * 宿主机网络，6379 端口。
   * 数据文件夹映射在 `${HOME}/avatar/redis` 中。
2. `5824600/mysql:5.7` 数据库:
   * `mysql.initdb.d` 映射到 `${MYSQL_HOME}/mysql.initdb.d` 初始化数据库表结构。
   * 用户名 `avatar`，密码为空；`root` 密码为空。
   * 宿主机网络， 3306 端口。
   * 数据文件映射在 `${HOME}/avatar/mysql` 中。
3. 创建 `avatar.sandbox.network`。
4. 用 `docker-compose.yml` 启动这两个服务。

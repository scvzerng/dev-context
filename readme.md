## docker开发环境

> 目标把开发用到的环境 如数据库 中间件统一到一个镜像中方便携带`不搭建集群`

- **activemq** `已完成`
- **mongodb** `已完成`
- **redis** `已完成`
- mysql `未完成`
- zookeeper `未完成`
- kafka `未完成`
- elastic search `未完成`

```docker
docker run -p 61616:61616 -p 8161:8161 -p 27017:27017 -p 6379:6379 registry.cn-hangzhou.aliyuncs.com/scvzerng/dev-context:1.0-SNAPSHOT
```
FROM alpine:3.10.3 
  
# 作者信息
MAINTAINER JRE Docker Maintainers "1024331014@qq.com"
  
# 修改源
RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
  echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories
  
# 安装需要的软件
RUN apk update && \
  apk add --no-cache ca-certificates && \
  apk add --no-cache curl bash tree tzdata go && \
  cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
  mkdir /app

#普罗米修斯包安装



ENTRYPOINT [ "bash" ]
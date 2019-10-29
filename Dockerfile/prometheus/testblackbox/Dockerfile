FROM go:1.10
#FROM alpine:3.10.3 
  
# 修改源
RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
  echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories
  
# 安装需要的软件
RUN apk update && \
  apk add --no-cache ca-certificates && \
  apk add --no-cache curl bash tree tzdata go && \
  cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
  mkdir -p /app

#普罗米修斯包安装
ADD ./blackbox_exporter-0.15.1.linux-amd64.tar.gz /app
RUN cp /app/blackbox_exporter-0.15.1.linux-amd64/blackbox.yml /app

EXPOSE 9115
WORKDIR /app/blackbox_exporter-0.15.1.linux-amd64
ENTRYPOINT ./blackbox_exporter --config.file=/app/blackbox.yml
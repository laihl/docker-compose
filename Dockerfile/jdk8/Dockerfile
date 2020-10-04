FROM alpine:3.10.3

RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories && \
echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories

RUN apk update && \
apk add --no-cache ca-certificates && \
apk add --no-cache curl bash tree tzdata openjdk8 && \
cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
mkdir -p /app

CMD echo 'hellow jdk1.8'

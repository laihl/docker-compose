#!/bin/bash
#rancher/rancher   =>    10.211.55.37/rancher/rancher
docker images|grep "alpine"   |sed 's#alpine#192.168.0.211/library/alpine#g'|awk '{print "docker tag " $3" "$1":"$2}'|sh -x




docker images|grep "192.168.0.211" |awk '{print "docker push "$1":"$2}'|sh -x
docker images|grep "192.168.0.211" |awk '{print "docker rmi "$1":"$2}'|sh -x


# kubectl create secret docker-registry secret-name --namespace=default \
# --docker-server=http://10.211.55.37 --docker-username=admin \
# --docker-password=Harbor12345
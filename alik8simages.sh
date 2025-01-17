#!/bin/bash
list='kube-apiserver:v1.21.11
kube-controller-manager:v1.21.11
kube-scheduler:v1.21.11
kube-proxy:v1.21.11
pause:3.4.1
etcd:3.4.13-0
coredns/coredns:v1.8.0'
for item in ${list}
  do
    docker pull registry.aliyuncs.com/google_containers/$item && docker tag registry.aliyuncs.com/google_containers/$item k8s.gcr.io/$item && docker rmi registry.aliyuncs.com/google_containers/$item
  done

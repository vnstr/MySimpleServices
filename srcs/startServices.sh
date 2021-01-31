#!/bin/sh

kubectl apply -f ~/MySimpleServices/srcs/metallb.yaml

kubectl apply -f ~/MySimpleServices/srcs/nginx/nginx.yaml
kubectl apply -f ~/MySimpleServices/srcs/wordpress/wordpress.yaml
kubectl apply -f ~/MySimpleServices/srcs/mysql/mysql.yaml
kubectl apply -f ~/MySimpleServices/srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f ~/MySimpleServices/srcs/influxdb/influxdb.yaml

sleep 10

kubectl get pods

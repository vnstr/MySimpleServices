#!/bin/sh

kubectl apply -f metallb.yaml

kubectl apply -f nginx/nginx.yaml
kubectl apply -f wordpress/wordpress.yaml
kubectl apply -f mysql/mysql.yaml

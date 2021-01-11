#!/bin/sh

kubectl delete -f nginx/nginx.yaml
kubectl delete -f wordpress/wordpress.yaml
kubectl delete -f mysql/mysql.yaml

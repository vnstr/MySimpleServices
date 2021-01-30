#!/bin/sh

kubectl delete -f ~/MySimpleServices/srcs/nginx/nginx.yaml
kubectl delete -f ~/MySimpleServices/srcs/wordpress/wordpress.yaml
kubectl delete -f ~/MySimpleServices/srcs/mysql/mysql.yaml
kubectl delete -f ~/MySimpleServices/srcs/phpmyadmin/phpmyadmin.yaml

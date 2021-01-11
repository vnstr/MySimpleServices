#!/bin/sh

# Starting minikube

minikube --driver=virtualbox --memory='3000' --disk-size 20000MB start

# -----------------

# Adding addons

minikube addons enable dashboard
minikube addons enable metallb

# -----------------

# Prepare dokcer

eval $(minikube docker-env)

# -----------------

# Building focker-images

srcs/nginx/buildMainNginx.sh
srcs/wordpress/buildWordpressNginx.sh

# -----------------

# Prepare metallb

kubectl apply -f srcs/metallb.yaml

# -----------------

# Starting services

kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml

# -----------------

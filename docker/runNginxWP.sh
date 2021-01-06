#!/bin/sh

./nginx/runMainNginx.sh &&\
	./wordpress/runWordpressNginx.sh

docker ps -a

#!/bin/sh

	./nginx/buildMainNginx.sh &&\
		./wordpress/buildWordpressNginx.sh

docker images

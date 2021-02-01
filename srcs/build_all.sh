#!/bin/sh

	~/MySimpleServices/srcs/nginx/buildMainNginx.sh &&\
	~/MySimpleServices/srcs/mysql/buildMysql.sh &&\
	~/MySimpleServices/srcs/influxdb/buildInfluxdb.sh &&\
	~/MySimpleServices/srcs/wordpress/buildWordpressNginx.sh &&\
	~/MySimpleServices/srcs/phpmyadmin/buildPhpMyAdmin.sh &&\
	~/MySimpleServices/srcs/grafana/buildGrafana.sh &&\
	~/MySimpleServices/srcs/ftps/buildFtps.sh



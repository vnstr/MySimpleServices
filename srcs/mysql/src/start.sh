#!/bin/sh

rc default
#/etc/init.d/mariadb setup
#rc-service mariadb start
mysql -u root mysql < init_db.sql
#mysql -u root wordpress < wp.sql
rc-service mariadb stop
/usr/bin/supervisord

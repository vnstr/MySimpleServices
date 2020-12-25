#!/bin/sh

if grep -q "include\ \/etc\/nginx\/modules\/\*.conf;" /etc/nginx/nginx.conf
then
	sed -i 's/include\ \/etc\/nginx\/modules\/\*.conf;/#include\ \/etc\/nginx\/modules\/\*.conf;/' /etc/nginx/nginx.conf
fi

if grep -q "include\ \/etc\/nginx\/conf.d\/\*.conf;" /etc/nginx/nginx.conf
then
	sed -i 's/include\ \/etc\/nginx\/conf.d\/\*.conf;/include\ \/etc\/nginx\/conf.d\/\ftServices.conf;/' /etc/nginx/nginx.conf
fi



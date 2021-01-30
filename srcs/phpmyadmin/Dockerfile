FROM alpine:3.12.3

RUN apk update
RUN apk add nginx supervisor php7 php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-fpm libc6-compat
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /www/phpmyadmin/tmp
RUN chmod 777 /www/phpmyadmin/tmp
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xf phpMyAdmin-5.0.4-all-languages.tar.gz --strip-components=1 -C /www/phpmyadmin
RUN rm phpMyAdmin-5.0.4-all-languages.tar.gz

COPY config.inc.php /www/phpmyadmin/
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/
COPY telegraf.conf /etc/telegraf/

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 5000

CMD sh start.sh

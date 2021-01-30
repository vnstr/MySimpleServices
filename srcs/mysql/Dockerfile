FROM alpine:3.12.3

VOLUME ["/var/lib/mysql"]

RUN apk update
RUN apk add mysql mysql-client openrc libc6-compat supervisor
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz

COPY supervisord.conf /etc/
COPY init_db.sql .
COPY wp.sql .
COPY my.cnf /etc/
COPY telegraf.conf /etc/telegraf/

COPY start.sh .
RUN chmod +x start.sh

EXPOSE 3306

CMD sh start.sh

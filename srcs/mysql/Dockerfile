FROM alpine:3.12.3

VOLUME ["/var/lib/mysql"]

# Installing required packages.

RUN apk update
RUN apk add\
	mysql\
	mysql-client\
	openrc\
	libc6-compat\
	supervisor

#-----------------------------

#RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
#RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
#RUN rm telegraf-1.17.0_linux_amd64.tar.gz

# Setup supervisord.conf for supervisord.

COPY src/supervisord.conf /etc/
COPY src/startSupervisord.sh /

#-----------------------------

# Database setup.

COPY src/init_db.sql /
COPY src/mysql-service.sql /
COPY src/my.cnf /etc/

#-----------------------------

#COPY telegraf.conf /etc/telegraf/

COPY src/initAndStartDatabase.sh /

EXPOSE 3306

CMD /initAndStartDatabase.sh

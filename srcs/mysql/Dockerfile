FROM alpine:latest

# Creating storage

VOLUME ["/var/lib/mysql"]

#-----------------------------

# Installing required packages.

RUN apk update &&\
	apk add\
	mysql\
	mysql-client\
	openrc\
	libc6-compat\
	supervisor

#-----------------------------

# Setup supervisord.conf for supervisord.

COPY src/supervisord.conf /etc/

#-----------------------------

# Setup data-base

COPY src/init_db.sql .
COPY src/wp.sql .
COPY src/my.cnf /etc/

#-----------------------------

COPY src/start.sh .
RUN chmod +x start.sh

EXPOSE 3306

CMD sh start.sh

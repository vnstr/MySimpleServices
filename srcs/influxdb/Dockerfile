FROM alpine:3.12.3

# Installing required packages.

RUN apk update
RUN apk add\
	libc6-compat\
	supervisor\
	influxdb

#-----------------------------

# Installing telegraf

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

#-----------------------------


# Setup supervisord.conf for supervisord.

COPY src/supervisord.conf /etc/
COPY src/startSupervisord.sh /

#-----------------------------

#COPY start.sh .
#RUN chmod +x start.sh

EXPOSE 8086

CMD /startSupervisord.sh

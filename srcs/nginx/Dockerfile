FROM alpine:3.12.3

# Installing required packages.

RUN	apk update &&\
	apk add\
	vim\
	supervisor\
	nginx\
	openssl &&\
	mkdir -p /run/nginx

#-----------------------------

#Generate ssl.

RUN mkdir -p /etc/nginx/.ssh;\
	mkdir -p /etc/nginx/.ssl;\
	openssl req\
	-x509\
	-nodes\
	-days 365\
	-subj "/C=RU/ST=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com"\
	-addext "subjectAltName=DNS:gdrive.com"\
	-newkey rsa:2048\
	-keyout /etc/nginx/.ssh/ft_services.key\
	-out /etc/nginx/.ssl/ft_services.crt;
#------------------------------

# Setup nginx.conf for nginx.

COPY ./src/nginx.conf /etc/nginx/conf.d

COPY src/setupNginxConf.sh /
RUN /setupNginxConf.sh && rm setupNginxConf.sh

#------------------------------

# Installing telegraf.

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz
RUN tar -xf telegraf-1.17.0_linux_amd64.tar.gz --strip-components=2 -C /
RUN rm telegraf-1.17.0_linux_amd64.tar.gz
COPY src/telegraf.conf /etc/telegraf/

#------------------------------

# Setup supervisord.

COPY ./src/supervisord.conf /etc/
COPY ./src/startSupervisord.sh /

#------------------------------

# Open ports

EXPOSE 80 443

#------------------------------

# Final command

CMD /startSupervisord.sh

#------------------------------

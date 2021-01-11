FROM alpine

# Installing required packages.

RUN	apk update &&\
	apk add\
	vim\
	supervisor\
	nginx\
	openssl &&\
	mkdir -p /etc/vim &&\
	mkdir -p /run/nginx

COPY ./src/vimrc /etc/vim/

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

# Setup supervisord.conf for supervisord.

COPY ./src/supervisord.conf /etc/

#------------------------------

# Script for starting.

COPY ./src/startSupervisord.sh /

#------------------------------

# Open ports

EXPOSE 80 443

#------------------------------

# Final command

CMD /startSupervisord.sh

#------------------------------

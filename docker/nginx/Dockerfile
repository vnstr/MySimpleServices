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

COPY ./vimrc /etc/vim/

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

# Setup ftServicesNginx.conf for nginx.

COPY ./src/ftServicesNginx.conf /etc/nginx/conf.d

COPY src/setupFtServicesNginxConf.sh /
RUN /setupFtServicesNginxConf.sh && rm setupFtServicesNginxConf.sh

#------------------------------

# Setup ftServicesSupervisord.conf for supervisord.

COPY ./src/ftServicesSupervisord.conf /etc/

#------------------------------

# Scripts for starting.

COPY ./src/startNginxAlpine.sh /

COPY ./src/startSupervisord.sh /

EXPOSE 80 443

CMD /startSupervisord.sh


FROM alpine

# Installing required packages.

RUN	apk update &&\
	apk add\
	vim\
	supervisor\
	nginx\
	php7 \
	php7-mysqli \
	php7-zlib \
	php7-curl \
	php7-mbstring \
	php7-json \
	php7-session \
	php7-fpm &&\
	mkdir -p /etc/vim &&\
	mkdir -p /run/nginx

COPY ./vimrc /etc/vim/

#-----------------------------

#Generate ssl.

#RUN mkdir -p /etc/nginx/.ssh;\
#	mkdir -p /etc/nginx/.ssl;\
#	openssl req\
#	-x509\
#	-nodes\
#	-days 365\
#	-subj "/C=RU/ST=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com"\
#	-addext "subjectAltName=DNS:gdrive.com"\
#	-newkey rsa:2048\
#	-keyout /etc/nginx/.ssh/ft_services.key\
#	-out /etc/nginx/.ssl/ft_services.crt;
#------------------------------

# Setup ftServicesNginx.conf for nginx.

COPY ./src/ftServicesNginx.conf /etc/nginx/conf.d

COPY src/setupFtServicesNginxConf.sh /
RUN /setupFtServicesNginxConf.sh && rm setupFtServicesNginxConf.sh

#------------------------------

# Setup Wordpress.

RUN wget http://wordpress.org/latest.tar.gz &&\
	tar -xf latest.tar.gz -C /var/www/ &&\
	rm latest.tar.gz

#------------------------------

# Setup ftServicesSupervisord.conf for supervisord.

COPY ./src/ftServicesSupervisord.conf /etc/

#------------------------------

# Scripts for starting.

COPY ./src/startNginxAlpine.sh /

COPY ./src/startSupervisord.sh /

EXPOSE 5050

CMD /startSupervisord.sh


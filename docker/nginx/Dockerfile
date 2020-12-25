FROM alpine

# Installing required packages.

RUN	apk add\
	vim\
	nginx\
	openssl |\
	mkdir -p /etc/vim |\
	mkdir -p /run/nginx

COPY ./vimrc /etc/vim/

#-----------------------------

# Creating user and generate ssh.

# RUN adduser -g 'Nginx www user' -h /home/www/ wwwgdrive

RUN adduser\
	-g 'Nginx-ft_services www user'\
	-h /home/www/\
	-s SHELL\
	-D\
	wwwft_services

RUN mkdir -p /home/www/.ssl;\
	mkdir -p /home/www/.ssh;\
	openssl req\
	-x509\
	-nodes\
	-days 365\
	-subj "/C=RU/ST=Moscow/O=Ft_servicesCompany, Inc./CN=ft_services.com"\
	-addext "subjectAltName=DNS:gdrive.com"\
	-newkey rsa:2048\
	-keyout /home/www/.ssh/ft_services.key\
	-out /home/www/.ssl/ft_services.crt;

#------------------------------

# Setup ft_services.conf for nginx

COPY ./src/ftServices.conf /etc/nginx/conf.d

COPY src/setupNginxFtServices.sh /
RUN /setupNginxFtServices.sh | rm setupNginxFtServices.sh

#------------------------------

COPY ./src/startNginxAlpine.sh /

EXPOSE 80 443

#USER wwwft_services

#CMD nginx -g 'daemon off;'


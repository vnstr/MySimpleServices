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

COPY ./src/vimrc /etc/vim/

#-----------------------------

# Setup nginx.conf for nginx.

COPY ./src/nginx.conf /etc/nginx/conf.d

COPY src/setupNginxConf.sh /
RUN /setupNginxConf.sh && rm setupNginxConf.sh

#------------------------------

# Setup Wordpress.

RUN wget http://wordpress.org/latest.tar.gz &&\
	tar -xf latest.tar.gz -C /var/www/ &&\
	rm latest.tar.gz
COPY src/wp-config.php /var/www/wordpress/
#------------------------------

# Setup supervisord.conf for supervisord.

COPY ./src/supervisord.conf /etc/

#------------------------------

# Script for starting.

COPY ./src/startSupervisord.sh /

#------------------------------

# Open ports

EXPOSE 5050

#------------------------------

# Final command

CMD /startSupervisord.sh

#------------------------------

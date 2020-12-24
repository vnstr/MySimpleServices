FROM alpine

RUN apk add vim nginx openssl

RUN mkdir -p /run/nginx \
mkdir -p /etc/vim

RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=GdriveCompany, Inc./CN=gdrive.com" -addext "subjectAltName=D
NS:gdrive.com" -newkey rsa:2048 -keyout /gdrive.key -out /gdrive.crt;

COPY ./vimrc /etc/vim/

COPY ./startNginxAlpine.sh /

EXPOSE 80 443

#CMD nginx -g 'daemon off;'


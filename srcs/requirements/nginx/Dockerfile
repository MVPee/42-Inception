FROM debian:buster

RUN	apt-get update && \
    apt-get install -y nginx openssl

RUN	openssl req -new -newkey rsa:4096 -x509 -sha512 -days 365 -nodes  \
	-subj "/C=BE/ST=Bruxelles/O=19/CN=mvan-pee.42.fr"  \
	-out /etc/ssl/certs/mvp.crt  \
	-keyout /etc/ssl/private/mvp.key

COPY ./conf/nginx.conf /etc/nginx/conf.d

EXPOSE	443

CMD  ["nginx", "-g", "daemon off;"]

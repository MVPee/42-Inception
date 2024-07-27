FROM debian:buster

RUN apt update -y && \
    apt upgrade -y && \
    apt install nginx -y && \
    apt install openssl -y

# Dir for certificate and key for secure connection
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes \
    -out /etc/nginx/ssl/inception.crt \
    -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=BE/ST=RBC/L=Bruxelles/O=42/OU=19/CN=login.42.fr/UID=login"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf
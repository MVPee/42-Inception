FROM debian:buster

RUN apt update -y && \
    apt upgrade -y && \
    apt install nginx -y && \
    apt install openssl -y

# Dir for certificate and key for secure connection
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -out /etc/nginx/ssl/mvan-pee.crt \
    -keyout /etc/nginx/ssl/mvan-pee.key \
    -subj "/C=BE/ST=Bruxelles/L=Bruxelles/O=42/OU=mvan-pee/CN=mvan-pee/"

RUN mkdir -p /var/run/nginx

COPY ./conf/nginx.conf /etc/nginx/conf.d/

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
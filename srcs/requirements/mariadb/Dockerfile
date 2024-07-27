FROM debian:buster

RUN apt update -y && \
    apt upgrade -y && \
    apt-get install mariadb-server -y

COPY conf/mariadb.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/mariadb.sh /usr/local/bin/mariadb.sh
RUN chmod +x /usr/local/bin/mariadb.sh

EXPOSE 3306

CMD ["/usr/local/bin/mariadb.sh"]
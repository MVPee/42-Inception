FROM debian:buster

RUN	apt-get update && \
	apt-get install -y \
	mariadb-server \
	mariadb-client

RUN	mkdir -p /run/mysqld /var/lib/mysql && \
	chown -R mysql:mysql /run/mysqld /var/lib/mysql

RUN	mysql_install_db --user=mysql --datadir=/var/lib/mysql --auth-root-authentication-method=normal --skip-test-db

RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/setup_mariadb.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup_mariadb.sh

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/setup_mariadb.sh"]

CMD ["/usr/bin/mysqld_safe", "--datadir=/var/lib/mysql"]

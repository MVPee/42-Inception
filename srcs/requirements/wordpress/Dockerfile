FROM debian:buster

RUN	apt-get update && \
	apt-get install -y	\
	curl \
	mariadb-client \
	php7.3 \
	php7.3-fpm \
	php7.3-curl \
	php7.3-mysql

RUN mkdir -p /run/php
RUN	mkdir -p /var/www/html

# WordPress command line interface
RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./tools/setup_wordpress.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup_wordpress.sh

EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/setup_wordpress.sh"]

CMD ["php-fpm7.3", "-F"]
FROM debian:buster

RUN apt-get update && apt-get install -y \
    wget \
	php7.3-fpm \
	php7.3-mysql \
	mariadb-client \
	curl && \
	rm -rf /var/lib/apt/lists/*

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www && \
    cd /var/www && \
    tar -xzf wordpress-6.0-fr_FR.tar.gz && \
    rm wordpress-6.0-fr_FR.tar.gz

RUN chown -R root:root /var/www/wordpress
FROM debian:buster
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install php-cgi  php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util  php-mysql php-bcmath  wget vim -y
WORKDIR /var/www/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.xz
RUN mkdir /run/php
CMD ["php-fpm7.3", "--nodaemonize"]
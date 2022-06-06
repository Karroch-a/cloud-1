# FROM ubuntu:20.04
# ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install phpmyadmin php-mbstring php-zip php-gd php-json php-curl vim -y
# RUN echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
# RUN mv /etc/phpmyadmin/config-db.php test.php
# COPY ./tools/config-db.php /etc/phpmyadmin/
# RUN service apache2 restart
# CMD apachectl -D FOREGROUND

# FROM debian:buster
# ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install php-cgi  php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util  php-mysql php-bcmath  wget vim -y
# WORKDIR /var/www/
# RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.xz
# RUN mkdir /run/php
# CMD ["php-fpm7.3", "--nodaemonize"]
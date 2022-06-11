FROM debian:buster
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install php-cgi  php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util  php-mysql php-bcmath  wget vim -y
RUN sed -i -e 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 5000/g' /etc/php/7.3/fpm/pool.d/www.conf
WORKDIR /var/www/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-english.tar.xz
RUN tar -xf phpMyAdmin-5.2.0-english.tar.xz && rm -fr phpMyAdmin-5.2.0-english.tar.xz && mv phpMyAdmin-5.2.0-english phpmyadmin
RUN mv /var/www/phpmyadmin/config.sample.inc.php /var/www/phpmyadmin/config.inc.php
RUN sed -i 's/localhost/${DB_HOST}/g' /var/www/phpmyadmin/config.inc.php
RUN mkdir /run/php
CMD ["php-fpm7.3", "--nodaemonize"]
FROM debian:buster
RUN apt-get update && apt-get install -y php-cgi php-redis php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip wget git vim curl -y
WORKDIR /var/www/
# RUN wget https://wordpress.org/latest.tar.gz
# RUN tar -xvzf latest.tar.gz
# RUN rm -rf latest.tar.gz
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
WORKDIR /var/www/wordpress/
RUN wp core download --allow-root
RUN cp wp-config-sample.php wp-config.php
RUN sed -i -e 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN chown -R www-data:www-data /var/www/wordpress 
RUN mkdir /run/php
ENTRYPOINT sed -i -e "s/database_name_here/${MYSQL_DB}/g" /var/www/wordpress/wp-config.php && sed -i -e "s/username_here/${MYSQL_USER}/g" /var/www/wordpress/wp-config.php && sed -i -e "s/password_here/${MYSQL_PASSWORD}/g" /var/www/wordpress/wp-config.php && sed -i -e "s/localhost/${DB_HOST}/g" /var/www/wordpress/wp-config.php && wp core install --path=/var/www/wordpress --url=$Url --title=$Ip --admin_user=$Username --admin_password=$Password --admin_email=abdellah@1337.ma --allow-root --quiet && php-fpm7.3 --nodaemonize
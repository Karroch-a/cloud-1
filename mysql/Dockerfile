FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
COPY ./tools/dump.sql /tmp/dump.sql
RUN apt-get update  && apt-get install mysql-server -y
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
RUN service mysql start && mysql -u root < /tmp/dump.sql
CMD ["mysqld_safe", "mysqld --init-file=/home/me/mysql-init &"]
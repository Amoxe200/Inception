FROM debian:buster

#install mariadb
RUN apt-get update
RUN apt-get install -y mariadb-server

# set MariaDB data dir and log dir
RUN mkdir -p /var/lib/mysql && mkdir -p /var/log/mysql && chown mysql:mysql /var/log/mysql

CMD ["mysqld_safe"]
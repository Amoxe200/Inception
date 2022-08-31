FROM debian:buster

#insall Wordpress
RUN apt-get update
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN apt-get install -y curl

#install php and php-fpm
RUN apt install -y php php-common
RUN apt install -y php-fpm

RUN groupadd wordpress_user
RUN useradd -g wordpress_user wordpress_user
RUN mkdir -p /var/www/html
RUN mkdir -p /run/php/


RUN mkdir -p /var/run


#Download wordpress files
RUN curl -LO https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN cp -R wordpress/* /var/www/html/

#copy php-fpm config file
COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
CMD ["php-fpm7.3", "-F"]
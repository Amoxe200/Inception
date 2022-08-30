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

#copy php-fpm config file
COPY wordpress_pool.conf /etc/php/7.3/fpm/pool.d/wordpress_pool.conf
RUN mkdir -p /var/run

CMD ["php-fpm7.3", "-F"]

#Download wordpress files
# RUN curl -LO https://wordpress.org/latest.zip
# RUN unzip latest.zip
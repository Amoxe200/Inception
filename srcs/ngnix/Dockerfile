FROM debian:buster

#install ngnix
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y -f nginx

#Copy config file
COPY nginx.conf /etc/nginx/sites-available/nginx.conf

#Run the ngnix server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
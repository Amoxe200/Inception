FROM debian:buster

#install ngnix
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y -f nginx

#Copy config file
COPY nginx.conf /etc/nginx/sites-available/nginx.conf
COPY *.html /usr/share/nginx/html/

#Expose the port for access
EXPOSE 80/tcp

#Run the ngnix server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
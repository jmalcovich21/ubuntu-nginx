FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN rm -f /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-enabled/default
COPY 33.txt /var/www/html/33.txt
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

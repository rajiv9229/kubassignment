FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN rm /var/www/html/index.html
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

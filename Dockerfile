FROM ubuntu:16.04

MAINTAINER STEPHEN

RUN apt-get update && apt-get install -y libjpeg-dev libpng12-dev apache2 libapache2-mod-php php7.0 php7.0-mysql php7.0-dev && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN a2enmod rewrite expires
RUN service apache2 start

VOLUME /var/www/html

EXPOSE 80

CMD service apache2 start && tail -f /dev/null

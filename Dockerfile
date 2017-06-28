FROM ubuntu:16.04

MAINTAINER STEPHEN

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN a2enmod rewrite expires
RUN service apache2 start

VOLUME /var/www/html

EXPOSE 80

CMD service apache2 start && tail -f /dev/null
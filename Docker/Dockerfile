FROM php:apache
LABEL author="Aruna" description="A comprehensive docker image to run php:apache"
EXPOSE 80
WORKDIR /var/www/html

# Install wget
RUN apt-get update && apt-get install -y wget

# Download file using wget
RUN wget https://raw.githubusercontent.com/ifsemail9/k8s/main/sample-project/php-info.php

RUN cp php-info.php index.php



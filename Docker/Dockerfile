FROM php:apache
LABEL author="Aruna" description="A comprehensive docker image to run php:apache"
EXPOSE 80
WORKDIR /var/www/html

# Install wget
RUN apt-get update && apt-get install -y wget

# Install your extensions to connect to MySQL and add mysqli
RUN docker-php-ext-install mysqli

# Download file using wget
RUN wget https://raw.githubusercontent.com/ifsemail9/k8s/main/sample-project/php-info.php
RUN wget https://raw.githubusercontent.com/ifsemail9/k8s/main/sample-project/db-connect.php

RUN cp php-info.php index.php

FROM mediawiki:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install libpq-dev -y -q && rm -rf /var/lib/apt/lists/* 
RUN docker-php-ext-install pgsql pdo pdo_pgsql

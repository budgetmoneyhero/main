FROM webdevops/php-nginx:8.2-alpine

ENV WEB_DOCUMENT_ROOT=/app/public
WORKDIR /app

RUN apk add --no-cache curl git unzip  && curl -sS https://getcomposer.org/installer -o composer-setup.php  && php composer-setup.php --install-dir=/usr/local/bin --filename=composer  && rm -f composer-setup.php

COPY . /app

RUN composer install --no-dev --optimize-autoloader

EXPOSE 8080

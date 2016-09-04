FROM php:fpm
MAINTAINER me@test.com
# Install PDO extension
RUN docker-php-ext-install pdo pdo_mysql
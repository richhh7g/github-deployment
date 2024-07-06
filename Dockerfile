FROM php:8.3.9-fpm-alpine3.20

RUN apk update && apk add --no-cache git;

COPY --from=composer:2.7.7 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

RUN addgroup -g 1000 phpg
RUN adduser -u 1000 -G phpg -h /home/user -s /bin/sh -D user

RUN chown -R 1000:1000 /var/www

USER user


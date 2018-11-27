FROM yiisoftware/yii2-php:7.1-apache

LABEL maintainer="tongtoan2704@gmail.com"

WORKDIR /app
COPY composer.json get-composer.sh /app/

RUN ./get-composer.sh
RUN php composer.phar update --dev --prefer-dist --no-interaction
COPY . .
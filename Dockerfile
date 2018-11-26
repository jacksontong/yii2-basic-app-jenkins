FROM yiisoftware/yii2-php:7.1-apache

WORKDIR /app
ADD . /app

RUN ./get-composer.sh
RUN php composer.phar update --dev --prefer-dist --no-interaction
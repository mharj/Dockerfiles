FROM php:7-cli
ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/
RUN mv /usr/local/bin/phpunit.phar /usr/local/bin/phpunit && chmod +x /usr/local/bin/phpunit
WORKDIR /src
VOLUME ["/src"]
ENTRYPOINT ["/usr/local/bin/phpunit"]

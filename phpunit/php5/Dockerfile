FROM php:5-cli
ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/
RUN mv /usr/local/bin/phpunit.phar /usr/local/bin/phpunit && chmod +x /usr/local/bin/phpunit
ENTRYPOINT ["/usr/local/bin/phpunit"]

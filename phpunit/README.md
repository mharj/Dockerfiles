PHPUnit Docker images
=====================

Build images:
```
docker build -t mharj/phpunit:php5 https://github.com/mharj/Dockerfiles.git#:phpunit/php5
docker build -t mharj/phpunit:php7 https://github.com/mharj/Dockerfiles.git#:phpunit/php7
```

Example alias:
```
alias php5unit='docker run --rm -it -v $PWD:/src mharj/phpunit:php5'
alias php7unit='docker run --rm -it -v $PWD:/src mharj/phpunit:php7'
```

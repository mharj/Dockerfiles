Bower docker image
================

### Build bower image
```
docker build -t mharj/bower https://github.com/mharj/Dockerfiles.git#:bower
```

### Create alias to run bower
```
alias bower='docker run -v ${PWD}:/src -ti --rm  mharj/bower'
```

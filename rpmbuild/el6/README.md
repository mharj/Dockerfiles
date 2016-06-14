Rpmbuild docker image
================

### Build rpmbuild image
```
docker build -t mharj/rpmbuild:6 https://github.com/mharj/Dockerfiles.git#:rpmbuild/el6
```

### Create alias to run rpmbuild
```
alias rpmbuild='docker run -v ${PWD}:/src -ti --rm  mharj/rpmbuild:6'
```

# cxx-hello-world
[![Build Status](https://travis-ci.org/ori-ken/cxx-hello-world.svg?branch=master)](https://travis-ci.org/ori-ken/cxx-hello-world)
c++ "hello world" trunk for private

## Environment
```
$ cat /etc/redhat-release
Scientific Linux release 6.10 (Carbon)
$ gcc -dumpversion
4.4.7`
```

## Build
```
$ cd cxx-hello-world/
$ make
g++    -c src/main.cxx -o src/main.o
g++     src/main.o -o src/HelloWorld
``` 

## Execute
```
$ ./src/HelloWorld
Hello world2
```


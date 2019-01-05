# cxx-hello-world
[![Build Status](https://travis-ci.org/ori-ken/cxx-hello-world.svg?branch=master)](https://travis-ci.org/ori-ken/cxx-hello-world)

c++ "hello world" 用のプライベートなtrunk。

## Environment
```
$ cat /etc/redhat-release
Scientific Linux release 6.10 (Carbon)
$ gcc -dumpversion
4.4.7
```

## Build
```
$ cd cxx-hello-world/
$ make
g++  -I./include  -c src/main.cxx -o src/main.o
g++   src/main.o -o src/HelloWorld
``` 

## Execute
```
$ make test
./src/HelloWorld
Hello, World.
```


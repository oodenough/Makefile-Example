Makefile-Example
================

Linux/Mac Makefile example.

original post is [here](http://cognitivewaves.wordpress.com/makefiles/)

I've done some modification so **Chinese** info is echoed while executing `make` command.

## how to use

After cloning the repository:

1. build with make

```bash
cd Makefile-Example
make
```

2. add `libmath.so` to path

* linux:

```bash
export LD_LIBRARY_PATH=path/to/Example-Makefile/math/bin/
```

* mac

```bash
export DYLD_LIBRARY_PATH=path/to/Example-Makefile/math/bin/
```

3. execute the program

```bash
./app/bin/app.exe 4
```
